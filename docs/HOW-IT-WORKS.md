# How the flat language bar works

## What GitHub actually measures

GitHub draws the coloured language bar from [Linguist][linguist], and Linguist's
statistics are **byte counts, not file counts**. The `GET /repos/{owner}/{repo}/languages`
endpoint returns the raw numbers:

```json
{ "Python": 4096, "COBOL": 4096, "Brainfuck": 4096, ... }
```

The bar is those numbers normalised. So if a hundred languages each contribute
the same number of bytes, every share is exactly `1/100`.

This repository uses **4096 bytes per language**:

```
100 x 4096 = 409,600 counted bytes
4096 / 409,600 = 0.01 = 1.00%
```

Any equal budget works. `--target-bytes 8192` doubles the archive and the bar
stays perfectly flat.

## What actually broke, and how it was fixed

The first push of this repository reported **96 languages, not 100**. Nothing in
the offline checks failed: every file was 4096 bytes and every pin looked right.
The bar was wrong anyway. These are the four causes, found by diffing the
manifest against `GET /repos/.../languages`.

### A. A space in the attribute value silently deletes the language

This is the big one, and it is a **git** limitation, not a Linguist one. Git's
attribute parser splits on whitespace, and it does not accept quoted values:

```console
$ git check-attr linguist-language -- langs/033-standard-ml/polyglot.sml
langs/033-standard-ml/polyglot.sml: linguist-language: Standard
```

`linguist-language=Standard ML` sets the language to `Standard`. Writing
`linguist-language="Standard ML"` is worse — git rejects the line outright with
`ML" is not a valid attribute name`. Backslash escaping truncates at the slash.

An unknown language name does not fall back to extension detection. The file
contributes **zero bytes** and disappears from the bar. Three languages vanished
this way: Common Lisp, Standard ML and Protocol Buffer.

The fix is a space-free alias, taken from the `aliases:` list in `languages.yml`:

| Display name | Attribute value |
| --- | --- |
| Common Lisp | `lisp` |
| Emacs Lisp | `elisp` |
| Standard ML | `sml` |
| Wolfram Language | `wolfram` |
| Protocol Buffer | `protobuf` |

Wolfram Language was the one that *appeared* to work, because `wolfram` happens
to be a real alias — so the truncated value `Wolfram` resolved correctly by luck.

`tools/build.py` now refuses to emit any attribute value containing whitespace,
and `tools/verify.py` resolves all hundred pins through `git check-attr --stdin`
before you are allowed to push.

### B. `group:` collapses dialects into one name

`Fortran Free Form` declares `group: Fortran`. Linguist reports grouped languages
under the **group** name, so pinning the dialect is pointless — the bar said
`Fortran` no matter what. The entry is simply named Fortran now, and the code is
still free-form Fortran 2008.

### C. A contested extension can be dropped even when pinned

`.mod` is claimed by **five** languages: AMPL, Linux Kernel Module, Modula-2,
NMODL and XML. Two of them are `type: data`. Even with all of

```gitattributes
langs/066-modula-2/polyglot.mod linguist-language=Modula-2 linguist-detectable linguist-generated=false -linguist-vendored -linguist-documentation
```

GitHub still dropped the file. The exhibit is now `polyglot.m2` with the same
explicit pin, which is all Linguist needs to classify and highlight it as
Modula-2. The lesson: when an extension is heavily contested, an explicit pin is
not always enough — pick an extension nobody else wants.

### D. `data` and `prose` types need forcing

SQL, GraphQL, XML, YAML, TOML and Protocol Buffer are all `type: data`, which is
not detectable by default. Without `linguist-detectable` they contribute nothing.

After all four fixes: **100 languages, 409,600 bytes, every share exactly
1.0000%.**

## Three more things that will quietly break it

### 1. Heuristics on ambiguous extensions

Linguist guesses when an extension is shared. `.m` could be Objective-C, MATLAB
or Wolfram Language. `.v` could be V, Verilog or Coq. `.pl` could be Perl or
Prolog. A wrong guess moves bytes from one language to another and the bar stops
being flat.

The fix is an explicit pin per file:

```gitattributes
langs/056-matlab/polyglot.matlab linguist-language=MATLAB linguist-detectable
langs/069-prolog/polyglot.pro    linguist-language=Prolog linguist-detectable
langs/097-verilog/polyglot.v     linguist-language=Verilog linguist-detectable
```

Because the pin is a full path rather than a glob, no pattern can accidentally
capture a second file.

### 2. Scaffolding that counts

A README is Markdown. A CI workflow is YAML. A generator is Python. Left alone,
they all land in the statistics and skew the result — the Python slice would be
enormous, because the generator contains all hundred programs.

So everything that is not an exhibit is switched off:

```gitattributes
README.md   -linguist-detectable
docs/**     -linguist-detectable
tools/**    -linguist-detectable
.github/**  -linguist-detectable
assets/**   -linguist-detectable
```

### 3. Languages that are not detectable by default

Linguist treats some types — `data`, `prose`, and parts of `markup` — as
non-detectable, so a `.sql`, `.yaml`, `.graphql` or `.proto` file may contribute
nothing at all. Appending `linguist-detectable` forces those entries to count:

```gitattributes
langs/051-sql/polyglot.sql           linguist-language=SQL linguist-detectable
langs/060-graphql/polyglot.graphql   linguist-language=GraphQL linguist-detectable
langs/087-yaml/polyglot.yaml         linguist-language=YAML linguist-detectable
```

Note that `langs/` is deliberately **not** marked `linguist-generated`, even
though `tools/build.py` writes it. Marking it generated would exclude the entire
exhibit from the statistics, which is the opposite of the point.

## How the padding stays valid

Every file is a real program followed by a comment fact-sheet, padded to the
exact byte budget. The generator knows one comment style per language:

| Style | Languages |
| --- | --- |
| `# ` | Python, Ruby, Perl, Shell, R, Julia, YAML, TOML, Nix, Make |
| `// ` | C, C++, C#, Java, Go, Rust, Swift, Kotlin, Solidity, SCSS |
| `-- ` | Haskell, Lua, Ada, SQL, Elm, VHDL, Eiffel, Dhall |
| `; ` | Assembly, Clojure, Scheme, Common Lisp, LLVM, Red |
| `% ` | Erlang, Prolog, MATLAB, TeX |
| `(* *)` | OCaml, Standard ML, Pascal, Modula-2, Wolfram Language |
| `/* */` | CSS, SAS |
| `<!-- -->` | HTML, XML, XSLT, Vue, Svelte |
| `      * ` | COBOL — the asterisk must land in column 7 |
| `* ` | ABAP — the asterisk must land in column 1 |
| `! ` | Fortran |
| `REM ` | Batchfile |
| `" "` | Smalltalk |
| `BTW ` | LOLCODE |
| `;; ` | WebAssembly text format |

Brainfuck is the special case: its only comments are *characters that are not
instructions*. The generator strips all eight of `+-<>[].,` from the padding
before writing it, so the fact-sheet cannot execute.

The padding algorithm fills nominal 78-byte lines, then builds one final line of
exactly the remaining length. If the remainder is too short to hold a valid
comment, it borrows a line back and rebuilds a longer one. The result is
byte-exact by construction, and the generator asserts it before writing.

## Verifying

Offline, `tools/verify.py` checks the byte counts, the pinning, the exclusions
and the manifest.

Online, `tools/verify.py --remote owner/repo` asks GitHub what Linguist actually
computed and fails if:

* a language is missing from the bar;
* an unexpected language appears in it;
* any share drifts more than 0.005 percentage points from 1.00%.

Linguist runs as a low-priority background job after a push, so the remote check
can legitimately return nothing for a minute or two on a fresh repository.

[linguist]: https://github.com/github-linguist/linguist

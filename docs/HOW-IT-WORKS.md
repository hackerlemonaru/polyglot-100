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

## Three things that will quietly break it

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

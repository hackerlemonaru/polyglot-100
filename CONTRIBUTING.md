# Contributing

The invariant is the whole project: **every exhibit is exactly the same number
of bytes, and there are exactly one hundred of them.** Anything that breaks that
is a bug, including a well-meaning one.

## Changing a program

Programs live in `tools/families/*.py`, ten files of ten languages. Never edit
`langs/` by hand — it is materialised output, and CI will reject a hand edit.

```bash
# 1. edit the code string in tools/families/NN_name.py
# 2. rebuild
python3 tools/build.py --target-bytes 4096
python3 tools/render_docs.py
# 3. prove it
python3 tools/verify.py
bash tools/smoke.sh
```

If your program is longer than the byte budget, `build.py` refuses to write and
tells you the overflow. Shorten the program; do not raise the budget for one
language, because the budget is shared by all hundred.

## Adding or swapping a language

The count must stay at exactly 100, so a swap is a replacement, not an addition.

1. Check the name against Linguist's registry. The key in
   [`languages.yml`][yml] is the exact string `linguist-language=` needs — it is
   `Shell`, not `Bash`; `Fortran Free Form`, not `Fortran`; `Protocol Buffer`,
   not `Protocol Buffers`.
2. Pick a comment style that exists in `STYLES` in `tools/build.py`, or add one.
   The padding must be a valid comment in that language.
3. Give the entry `name`, `ext`, `comment`, `year`, `author`, `paradigm`, `note`
   and `code`.
4. Rebuild, render, verify.

## Rules for the code

* Do the canonical task: greet, `sum(1..10)`, `fib(10)`. Both answers are 55.
* Be idiomatic. The point is to show what the language *looks like*, so prefer
  its characteristic constructs over a transliteration of C.
* For markup, data, hardware and configuration languages, encode the same
  payload rather than pretending to execute.
* No trailing whitespace before the padding, and LF endings only. CRLF would
  change the byte count.
* Keep it self-contained: one file, no third-party dependencies.

## Verifying against GitHub

```bash
GITHUB_TOKEN=$(gh auth token) python3 tools/verify.py --remote hackerlemonaru/polyglot-100
```

Linguist runs as a background job after a push. If the endpoint returns `{}`,
wait a minute and try again rather than assuming something is broken.

## The ballast

`assets/ballast/` is deliberate padding and is not part of the exhibit. Do not
edit it by hand; regenerate it with `tools/ballast.py`. If you are working on the
languages, you never need it — clone sparsely:

```bash
git clone --filter=blob:none --sparse https://github.com/hackerlemonaru/polyglot-100.git
cd polyglot-100 && git sparse-checkout set langs tools docs
```

[yml]: https://github.com/github-linguist/linguist/blob/master/lib/linguist/languages.yml

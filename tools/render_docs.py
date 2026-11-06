#!/usr/bin/env python3
"""Render README.md and docs/LANGUAGES.md from MANIFEST.json."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
REPO = "hackerlemonaru/polyglot-100"


def table(entries: list[dict]) -> str:
    rows = [
        "| # | Language | Family | First appeared | Designer |",
        "| ---: | --- | --- | ---: | --- |",
    ]
    for e in entries:
        link = f"[{e['name']}]({e['path']})"
        rows.append(
            f"| {e['index']} | {link} | {e['family']} | {e['year']} | {e['author']} |"
        )
    return "\n".join(rows)


def family_summary(entries: list[dict]) -> str:
    fams: dict[str, list[dict]] = {}
    for e in entries:
        fams.setdefault(e["family"], []).append(e)
    out = ["| Family | Languages | Share of the bar |", "| --- | --- | ---: |"]
    for fam, es in fams.items():
        names = ", ".join(e["name"] for e in es)
        out.append(f"| **{fam}** | {names} | {len(es)}.00% |")
    return "\n".join(out)


def main() -> None:
    m = json.loads((ROOT / "MANIFEST.json").read_text())
    entries = m["languages"]
    target = m["target_bytes_per_language"]
    total = m["counted_bytes_total"]

    langs_doc = f"""# The hundred languages

Every file below is exactly **{target:,} bytes**. Linguist counts bytes per
language, so each one occupies exactly **1.00%** of the repository.

The canonical task is the same everywhere: greet, compute `sum(1..10)`, and
compute `fib(10)`. Both results are **55**, which is the checksum for the whole
archive. Languages that describe data or hardware rather than execute
instructions encode the same payload instead.

{table(entries)}

## Families

{family_summary(entries)}

## Reading an entry

Each file has three parts:

1. a one-line header naming the language and its entry number;
2. a real, idiomatic program or artefact doing the canonical task;
3. a comment fact-sheet, padded to bring the file to exactly {target:,} bytes.

The padding is always a syntactically valid comment in that language, so it
never changes behaviour. For Brainfuck, whose only comments are "characters that
are not one of the eight instructions", the padding is stripped of `+-<>[].,`
before it is written.
"""
    (ROOT / "docs").mkdir(exist_ok=True)
    (ROOT / "docs" / "LANGUAGES.md").write_text(langs_doc, encoding="utf-8")

    readme = f"""<div align="center">

# polyglot-100

**One hundred programming languages. Exactly one percent each.**

A byte-balanced polyglot archive: every language gets a real program, every
program is padded to an identical byte count, and GitHub's language bar comes
out perfectly flat.

[![100 languages](https://img.shields.io/badge/languages-100-8957e5?style=flat-square)](docs/LANGUAGES.md)
[![1% each](https://img.shields.io/badge/share-1.00%25%20each-1f6feb?style=flat-square)](docs/HOW-IT-WORKS.md)
[![{target} bytes](https://img.shields.io/badge/bytes%20per%20language-{target}-238636?style=flat-square)](MANIFEST.json)
[![checksum 55](https://img.shields.io/badge/checksum-55-d29922?style=flat-square)](docs/HOW-IT-WORKS.md)
[![verify](https://img.shields.io/github/actions/workflow/status/{REPO}/verify.yml?style=flat-square&label=verify)](https://github.com/{REPO}/actions/workflows/verify.yml)
[![licence](https://img.shields.io/badge/licence-MIT-6e7681?style=flat-square)](LICENSE)

![The language bar: one hundred equal slices](assets/language-bar.svg)

</div>

---

## The idea

GitHub does not count files, lines, or commits when it draws that coloured bar.
It counts **bytes per language**, using [Linguist][linguist]. So the recipe for a
perfectly flat bar is arithmetic, not magic:

```
100 languages  x  {target:,} bytes  =  {total:,} counted bytes
{target:,} / {total:,}  =  0.01  =  1.00% each
```

Every exhibit in `langs/` is exactly {target:,} bytes long. Everything that is not an
exhibit — this README, the docs, the CI config, the generator — is excluded from
the statistics, so nothing can tip the balance.

## The checksum: 55

Every program does the same three things:

1. print a greeting naming its language;
2. compute `sum(1..10)`;
3. compute `fib(10)`.

```
sum(1..10) = 1 + 2 + ... + 10 = 55
fib(10)    = 0,1,1,2,3,5,8,13,21,34,55 -> 55
```

The two answers coincide, which makes **55** a one-number smoke test for the
whole archive. Where a language describes data, markup or silicon rather than
executing instructions, the entry encodes the same payload instead of printing it.

## The hundred

{family_summary(entries)}

Full index with designers, dates and links to every file:
**[docs/LANGUAGES.md](docs/LANGUAGES.md)**.

<div align="center">

![One hundred equal arcs](assets/language-wheel.svg)

</div>

## Verify it

```bash
# offline: byte counts, pinning, manifest agreement
python3 tools/verify.py

# online: ask GitHub what Linguist actually computed
GITHUB_TOKEN=$(gh auth token) python3 tools/verify.py --remote {REPO}

# run every entry whose toolchain you happen to have installed
bash tools/smoke.sh
```

`tools/verify.py --remote` fails if any language is missing from the bar, if an
unexpected one appears, or if any share drifts more than 0.005 from 1.00%.

## Rebuild it from nothing

```bash
python3 tools/build.py --target-bytes {target}   # materialise langs/ and .gitattributes
python3 tools/render_docs.py                   # README + docs/LANGUAGES.md
python3 tools/render_assets.py                 # the two SVGs above
python3 tools/verify.py                        # prove the invariant
```

Change `--target-bytes` and the whole archive rescales while staying perfectly
flat. The generator refuses to write anything if a program would overflow the
budget, so the invariant cannot be broken silently.

## Layout

```
langs/            100 exhibits, {target:,} bytes each, one language per directory
tools/            generator, verifier, doc renderer, asset renderer, smoke test
docs/             the full index, the Linguist mechanics, GitHub's real limits
assets/           generated SVGs, plus reproducible ballast (see below)
MANIFEST.json     machine-readable index of all 100 entries
.gitattributes    the pinning that makes the 1% split exact
```

## How the pinning works

`.gitattributes` does two jobs. It pins every exhibit, so ambiguous extensions
cannot be misfiled by heuristics — `.m` alone could be Objective-C, MATLAB or
Wolfram Language, and `.v` could be V, Verilog or Coq:

```gitattributes
langs/056-matlab/polyglot.matlab linguist-language=MATLAB linguist-detectable
langs/097-verilog/polyglot.v     linguist-language=Verilog linguist-detectable
```

And it removes the scaffolding from the count entirely:

```gitattributes
README.md   -linguist-detectable
docs/**     -linguist-detectable
tools/**    -linguist-detectable
```

Without that second half, this README alone would add a Markdown slice and the
bar would no longer be flat. Details in
**[docs/HOW-IT-WORKS.md](docs/HOW-IT-WORKS.md)**.

## About the size of this repository

This repo deliberately carries a large, reproducible binary ballast under
`assets/ballast/`, which pushes the checkout close to GitHub's recommended
ceiling. It is honest padding: it is generated from a fixed seed, it is
checksummed, it is excluded from the language statistics, and it contributes
nothing to the exhibits.

If you only want the code, do not download it:

```bash
git clone --filter=blob:none --sparse https://github.com/{REPO}.git
cd polyglot-100
git sparse-checkout set langs tools docs
```

GitHub's actual limits, and why "as big as possible" is not a great target, are
written up in **[docs/LIMITS.md](docs/LIMITS.md)**.

## Honest caveat

This is a demonstration of how GitHub measures languages, not a claim that
anyone wrote production systems in a hundred languages. The programs are real
and the arithmetic is real; the flat bar is a consequence of the byte budget,
by design. Treat it as a curiosity and a Linguist reference, not a résumé.

## Licence

MIT. See [LICENSE](LICENSE).

[linguist]: https://github.com/github-linguist/linguist
"""
    (ROOT / "README.md").write_text(readme, encoding="utf-8")
    print("rendered README.md and docs/LANGUAGES.md")


if __name__ == "__main__":
    main()

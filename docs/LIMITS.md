# GitHub's real size limits, and the ballast in this repo

This repository was deliberately built large. That deserves an explanation,
because "make the repo as big as GitHub allows" is a goal worth pushing back on.

## The actual numbers

| Constraint | Value | Source |
| --- | --- | --- |
| Single file in a push — warning | above 50 MiB | [About large files][large] |
| Single file in a push — **hard block** | above 100 MiB | [About large files][large] |
| File added through the web UI | 25 MiB | [About large files][large] |
| Whole repository — recommended | ideally under **1 GB** | [About large files][large] |
| Whole repository — strongly recommended | under **5 GB** | [About large files][large] |
| On-disk `.git` — recommended | near or under 10 GB | [Repository limits][limits] |
| One push — enforced | 2 GB | [Repository limits][limits] |
| Git LFS per file, Free/Pro | 2 GB, against a small storage quota | [About Git LFS][lfs] |

There is no single tidy "maximum repository size" to aim at. GitHub says it
"actively monitors signals of overall repository health", where health is a
function of size, commit frequency, contents and structure. Filling a repo with
binary filler to win a number is exactly the pattern that monitoring is looking
for, and accounts that use repositories as bulk storage have been asked to stop.

## What this repo does

* Total ballast: **900 MiB**, in ten parts of 90 MiB each.
* Every part is comfortably under the 100 MiB per-file hard block.
* The total sits under GitHub's 1 GB recommendation, not over it.
* The ballast is **excluded from Linguist statistics**, so the flat 1% bar is
  unaffected by it.
* It is **reproducible**: `tools/ballast.py` derives every byte from a fixed seed
  using SHAKE-256, and `assets/ballast/INDEX.json` records the SHA-256 of each
  part. You can regenerate it byte-for-byte instead of downloading it.

```bash
python3 tools/ballast.py --parts 10 --mib 90   # regenerate
python3 tools/ballast.py --check               # verify checksums
python3 tools/ballast.py --clean               # delete it locally
```

## Do not download it if you do not want it

```bash
git clone --filter=blob:none --sparse https://github.com/hackerlemonaru/polyglot-100.git
cd polyglot-100
git sparse-checkout set langs tools docs
```

That fetches the hundred exhibits, the generator and the docs — a few hundred
kilobytes — and leaves the ballast on the server.

## The honest recommendation

Size is not an achievement, and GitHub does not display it as one. Nothing about
a 900 MB checkout makes this repository look better than a 1 MB one; the language
bar, the README and the exhibits look identical either way. What bloat actually
buys you is slower clones, slower CI, and a nonzero chance of an abuse notice.

If you are copying this project, copy the byte-balancing trick and skip the
ballast:

```bash
python3 tools/build.py --target-bytes 4096
# and simply do not run tools/ballast.py
```

[large]: https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github
[limits]: https://docs.github.com/en/repositories/creating-and-managing-repositories/repository-limits
[lfs]: https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage

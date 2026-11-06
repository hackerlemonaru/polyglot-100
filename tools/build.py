#!/usr/bin/env python3
"""
polyglot-100 builder.

Materialises langs/<NNN>-<slug>/<file> for every language in tools/families/*.py,
padding each file with a comment "fact sheet" so that every single file is
EXACTLY TARGET_BYTES long. Equal bytes per language => exactly 1.00% each in
GitHub's Linguist statistics.

It also emits .gitattributes, which does two jobs:
  1. pins every langs/ file to its intended language (no heuristic surprises
     for ambiguous extensions like .m, .v, .pl, .h)
  2. marks everything else non-detectable, so the README, docs, CI and this
     generator cannot skew the 1% split.

Usage:  python3 tools/build.py [--target-bytes 4096]
"""
from __future__ import annotations

import argparse
import importlib.util
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TARGET_BYTES = 4096
LINE_W = 78  # nominal width of a padding line, including its newline

# ---------------------------------------------------------------------------
# Comment styles. Each entry: (open, close, min_bytes_for_a_line)
# A padding line is always a *complete*, syntactically valid comment.
# ---------------------------------------------------------------------------
STYLES = {
    "hash":    ("# ", ""),
    "slash":   ("// ", ""),
    "dash":    ("-- ", ""),
    "semi":    ("; ", ""),
    "dsemi":   (";; ", ""),
    "percent": ("% ", ""),
    "bang":    ("! ", ""),
    "paren":   ("(* ", " *)"),
    "cstyle":  ("/* ", " */"),
    "angle":   ("<!-- ", " -->"),
    "rem":     ("REM ", ""),
    "quote":   ('" ', ' "'),
    "cobol":   ("      * ", ""),   # '*' must land in column 7
    "abap":    ("* ", ""),        # '*' must land in column 1
    "lol":     ("BTW ", ""),
    "bf":      ("", ""),          # Brainfuck: any non-command char is a comment
}

# Brainfuck executes these eight characters, so padding must avoid all of them.
BF_COMMANDS = set("+-<>[].,")

FILLER = (
    "This file is one hundredth of a byte balanced polyglot archive. "
    "Every language here occupies exactly the same number of bytes, so the "
    "repository language bar reads one percent for each of the hundred entries. "
    "The padding you are reading is a plain comment and changes no behaviour. "
    "Regenerate everything with python3 tools/build.py and check it with "
    "python3 tools/verify.py. "
)


def attr_token(lang: dict) -> str:
    """
    The value to put after `linguist-language=`.

    Git's attribute parser splits on whitespace and does NOT accept quoted
    values, so `linguist-language=Standard ML` silently sets the language to
    "Standard". An unknown name makes the file contribute ZERO bytes, which
    quietly removes it from the bar. Any display name containing a space must
    therefore declare a space-free Linguist alias in `linguist`.

    Also note `group:` in languages.yml: "Fortran Free Form" is always reported
    as "Fortran", so there is no point pinning the dialect.
    """
    token = lang.get("linguist") or lang["name"]
    if any(c.isspace() for c in token):
        raise ValueError(
            f"{lang['name']}: linguist-language={token!r} contains whitespace. "
            "Git cannot parse it. Set linguist= to a space-free alias from "
            "languages.yml (e.g. sml, lisp, elisp, wolfram, protobuf)."
        )
    return token


def slugify(name: str) -> str:
    s = name.lower()
    s = s.replace("#", "sharp").replace("+", "plus")
    s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
    return s


def load_families():
    """Load tools/families/*.py in filename order."""
    fams = []
    for path in sorted((ROOT / "tools" / "families").glob("*.py")):
        if path.name.startswith("_"):
            continue
        spec = importlib.util.spec_from_file_location(path.stem, path)
        mod = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(mod)
        fams.append((mod.FAMILY, mod.LANGS))
    return fams


def comment_line(style: str, nbytes: int, text: str) -> str:
    """Build one comment line of exactly nbytes bytes, newline included."""
    op, cl = STYLES[style]
    inner = nbytes - len(op.encode()) - len(cl.encode()) - 1  # -1 for '\n'
    if inner < 1:
        raise ValueError(f"{style}: cannot build a {nbytes}-byte comment line")
    if style == "bf":
        safe = "".join(c for c in text if c not in BF_COMMANDS)
        body = (safe * (inner // len(safe) + 1))[:inner]
    else:
        body = (text * (inner // len(text) + 1))[:inner]
    line = f"{op}{body}{cl}\n"
    assert len(line.encode()) == nbytes, (style, nbytes, len(line.encode()))
    return line


def min_line(style: str) -> int:
    op, cl = STYLES[style]
    return len(op.encode()) + len(cl.encode()) + 2  # 1 content char + newline


def pad(code: str, style: str, target: int, facts: str) -> str:
    """Append comment lines until the file is exactly `target` bytes."""
    code = code.replace("\r\n", "\n")
    if not code.endswith("\n"):
        code += "\n"
    size = len(code.encode())
    if size > target:
        raise ValueError(f"program is {size} bytes, over the {target} byte budget")
    text = facts + " " + FILLER
    rem = target - size
    lines: list[str] = []
    while rem >= LINE_W:
        lines.append(comment_line(style, LINE_W, text))
        rem -= LINE_W
    if rem:
        if rem < min_line(style):
            if not lines:
                raise ValueError(f"cannot pad: only {rem} bytes left for {style}")
            lines.pop()
            rem += LINE_W
        lines.append(comment_line(style, rem, text))
    out = code + "".join(lines)
    assert len(out.encode()) == target, (len(out.encode()), target)
    return out


def fact_sheet(lang: dict, index: int, family: str) -> str:
    return (
        f"{lang['name']} -- entry {index:03d} of 100 in the polyglot-100 archive. "
        f"Family: {family}. First appeared: {lang['year']}. "
        f"Designed by {lang['author']}. Paradigm: {lang['paradigm']}. "
        f"{lang['note']}"
    )


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--target-bytes", type=int, default=TARGET_BYTES)
    args = ap.parse_args()
    target = args.target_bytes

    fams = load_families()
    flat = [(fam, lang) for fam, langs in fams for lang in langs]
    if len(flat) != 100:
        print(f"ERROR: expected 100 languages, found {len(flat)}", file=sys.stderr)
        return 1
    names = [l["name"] for _, l in flat]
    if len(set(names)) != 100:
        print("ERROR: duplicate language names", file=sys.stderr)
        return 1

    langs_dir = ROOT / "langs"
    if langs_dir.exists():
        for p in sorted(langs_dir.rglob("*"), reverse=True):
            if p.is_file():
                p.unlink()
            elif p.is_dir():
                p.rmdir()
    langs_dir.mkdir(exist_ok=True)

    attr = [
        "# polyglot-100 -- Linguist control file",
        "#",
        "# Two rules make the 1% x 100 split exact:",
        "#   1. every langs/ file is pinned to one language and forced detectable",
        "#   2. everything else is excluded from the statistics",
        "#",
        "# langs/ is materialised by tools/build.py, but it is deliberately NOT",
        "# marked linguist-generated: these files are the exhibit, so they must",
        "# be counted. Byte counts are identical, hence 1.00% each.",
        "",
        "* text=auto eol=lf",
        "",
        "# ---- exclude the scaffolding from language statistics ----",
        "README.md            -linguist-detectable",
        "LICENSE              -linguist-detectable",
        "CONTRIBUTING.md      -linguist-detectable",
        "MANIFEST.json        -linguist-detectable",
        ".gitattributes       -linguist-detectable",
        ".gitignore           -linguist-detectable",
        ".editorconfig        -linguist-detectable",
        "docs/**              -linguist-detectable",
        "tools/**             -linguist-detectable",
        ".github/**           -linguist-detectable",
        "assets/**            -linguist-detectable",
        "",
        "# ballast is binary padding: never counted, never diffed",
        "assets/ballast/*.bin binary",
        "",
        "# ---- one pinned language per exhibit ----",
    ]

    manifest = {
        "concept": "100 languages, identical byte counts, exactly 1% each",
        "target_bytes_per_language": target,
        "counted_bytes_total": target * 100,
        "canonical_task": "greet; sum(1..10); fib(10) -- both results are 55",
        "languages": [],
    }

    for i, (fam, lang) in enumerate(flat, start=1):
        slug = slugify(lang["name"])
        d = langs_dir / f"{i:03d}-{slug}"
        d.mkdir(parents=True, exist_ok=True)
        fname = lang.get("filename") or f"polyglot{lang['ext']}"
        rel = f"langs/{d.name}/{fname}"
        body = pad(lang["code"], lang["comment"], target, fact_sheet(lang, i, fam))
        (ROOT / rel).write_text(body, encoding="utf-8", newline="")
        # linguist-generated=false is explicit: some extensions (.mod among
        # them) can trip Linguist's generated-file heuristics, and a generated
        # file is dropped from the statistics entirely.
        attr.append(
            f"{rel} linguist-language={attr_token(lang)} linguist-detectable "
            "linguist-generated=false -linguist-vendored -linguist-documentation"
        )
        manifest["languages"].append(
            {
                "index": i,
                "name": lang["name"],
                "family": fam,
                "path": rel,
                "linguist": attr_token(lang),
                "bytes": target,
                "year": lang["year"],
                "author": lang["author"],
                "paradigm": lang["paradigm"],
            }
        )

    (ROOT / ".gitattributes").write_text("\n".join(attr) + "\n", encoding="utf-8")
    (ROOT / "MANIFEST.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )

    total = sum((ROOT / e["path"]).stat().st_size for e in manifest["languages"])
    print(f"built {len(flat)} exhibits, {target} bytes each, {total:,} counted bytes")
    for fam, langs in fams:
        print(f"  {len(langs):3d}  {fam}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

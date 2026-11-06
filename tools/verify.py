#!/usr/bin/env python3
"""
Verify the polyglot-100 invariant.

Offline checks (default):
  * exactly 100 exhibits
  * every exhibit is exactly the same number of bytes
  * no duplicate languages
  * every exhibit is pinned in .gitattributes and forced detectable
  * everything outside langs/ is excluded from the statistics
  * MANIFEST.json agrees with what is on disk

With --remote it also asks GitHub what Linguist actually computed, which is the
only check that matters in the end. Requires GITHUB_TOKEN and a pushed repo.

Usage:
  python3 tools/verify.py
  GITHUB_TOKEN=... python3 tools/verify.py --remote owner/repo
"""
from __future__ import annotations

import argparse
import json
import os
import sys
import urllib.request
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def fail(msg: str) -> None:
    print(f"  FAIL  {msg}")


def local_checks() -> int:
    manifest = json.loads((ROOT / "MANIFEST.json").read_text())
    entries = manifest["languages"]
    target = manifest["target_bytes_per_language"]
    problems = 0

    print("offline checks")

    if len(entries) != 100:
        fail(f"expected 100 manifest entries, found {len(entries)}")
        problems += 1
    else:
        print("  ok    100 manifest entries")

    names = Counter(e["name"] for e in entries)
    dupes = [n for n, c in names.items() if c > 1]
    if dupes:
        fail(f"duplicate languages: {dupes}")
        problems += 1
    else:
        print("  ok    100 distinct languages")

    on_disk = sorted(p for p in (ROOT / "langs").rglob("*") if p.is_file())
    if len(on_disk) != len(entries):
        fail(f"{len(on_disk)} files on disk but {len(entries)} in the manifest")
        problems += 1

    bad = []
    for e in entries:
        p = ROOT / e["path"]
        if not p.is_file():
            bad.append(f"{e['path']} missing")
        elif p.stat().st_size != target:
            bad.append(f"{e['path']} is {p.stat().st_size} bytes, expected {target}")
    if bad:
        for b in bad:
            fail(b)
        problems += len(bad)
    else:
        print(f"  ok    every exhibit is exactly {target} bytes")

    attrs = (ROOT / ".gitattributes").read_text().splitlines()
    pinned = {}
    for line in attrs:
        if "linguist-language=" in line:
            parts = line.split()
            pinned[parts[0]] = parts[1:]
    missing = [e["path"] for e in entries if e["path"] not in pinned]
    if missing:
        fail(f"not pinned in .gitattributes: {missing}")
        problems += len(missing)
    else:
        print("  ok    every exhibit pinned to one language")

    not_detectable = [
        p for p, a in pinned.items() if "linguist-detectable" not in a
    ]
    if not_detectable:
        fail(f"pinned but not forced detectable: {not_detectable}")
        problems += len(not_detectable)
    else:
        print("  ok    every exhibit forced detectable")

    scaffolding = ["README.md", "docs/**", "tools/**", ".github/**", "assets/**"]
    for pattern in scaffolding:
        line = next((l for l in attrs if l.split()[:1] == [pattern]), "")
        if "-linguist-detectable" not in line:
            fail(f"{pattern} is not excluded from statistics")
            problems += 1
    print("  ok    scaffolding excluded from statistics")

    total = sum((ROOT / e["path"]).stat().st_size for e in entries)
    if total != target * 100:
        fail(f"counted bytes {total} != {target * 100}")
        problems += 1
    else:
        print(f"  ok    {total:,} counted bytes, {total // 100:,} per language")
        print(f"  ok    predicted share per language: {100 / 100:.2f}%")

    problems += git_attr_checks(entries)

    return problems


def git_attr_checks(entries: list[dict]) -> int:
    """
    Ask git itself what the attributes resolve to.

    This is the check that catches the classic failure: a language name with a
    space in it. Git splits attribute values on whitespace and rejects quotes,
    so `linguist-language=Standard ML` becomes the unknown language "Standard",
    and Linguist then drops the file from the statistics altogether.
    """
    import subprocess

    if not (ROOT / ".git").exists():
        print("  skip  git attribute resolution (not a git checkout)")
        return 0
    paths = [e["path"] for e in entries]
    try:
        out = subprocess.run(
            ["git", "check-attr", "--stdin", "linguist-language",
             "linguist-detectable", "linguist-generated"],
            cwd=ROOT, input="\n".join(paths) + "\n",
            capture_output=True, text=True, timeout=60,
        )
    except (OSError, subprocess.SubprocessError) as exc:
        print(f"  skip  git attribute resolution ({exc})")
        return 0
    if out.returncode != 0:
        fail(f"git check-attr failed: {out.stderr.strip()}")
        return 1

    seen: dict[str, dict[str, str]] = {}
    for line in out.stdout.splitlines():
        try:
            path, attr, value = line.rsplit(": ", 2)
        except ValueError:
            continue
        seen.setdefault(path, {})[attr] = value

    expected = {e["path"]: e.get("linguist", e["name"]) for e in entries}
    problems = 0
    for path, want in expected.items():
        got = seen.get(path, {})
        if got.get("linguist-language") != want:
            fail(f"{path}: git resolves linguist-language="
                 f"{got.get('linguist-language')!r}, expected {want!r}")
            problems += 1
        if got.get("linguist-detectable") != "set":
            fail(f"{path}: linguist-detectable is not set")
            problems += 1
        if got.get("linguist-generated") != "false":
            fail(f"{path}: linguist-generated is not explicitly false")
            problems += 1
    if not problems:
        print("  ok    git resolves all 100 pins to the intended language")
    return problems


def remote_checks(repo: str) -> int:
    token = os.environ.get("GITHUB_TOKEN")
    if not token:
        print("\nremote checks skipped: GITHUB_TOKEN is not set")
        return 0
    url = f"https://api.github.com/repos/{repo}/languages"
    req = urllib.request.Request(
        url,
        headers={
            "Authorization": f"Bearer {token}",
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
            "User-Agent": "polyglot-100-verify",
        },
    )
    print(f"\nremote checks against {repo}")
    with urllib.request.urlopen(req, timeout=30) as r:
        data = json.load(r)
    if not data:
        print("  Linguist has not finished yet; re-run in a minute")
        return 1
    total = sum(data.values())
    manifest = json.loads((ROOT / "MANIFEST.json").read_text())
    expected = {e["name"] for e in manifest["languages"]}
    problems = 0

    print(f"  {len(data)} languages reported, {total:,} bytes counted")
    unexpected = set(data) - expected
    absent = expected - set(data)
    if unexpected:
        fail(f"unexpected languages in the bar: {sorted(unexpected)}")
        problems += len(unexpected)
    if absent:
        fail(f"missing from the bar: {sorted(absent)}")
        problems += len(absent)
    off = {
        k: round(v / total * 100, 4)
        for k, v in data.items()
        if abs(v / total * 100 - 1.0) > 0.005
    }
    if off:
        fail(f"not within 0.005 of 1.00%: {off}")
        problems += len(off)
    else:
        print("  ok    every language is 1.00%")
    return problems


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--remote", metavar="OWNER/REPO")
    args = ap.parse_args()
    problems = local_checks()
    if args.remote:
        problems += remote_checks(args.remote)
    print()
    if problems:
        print(f"{problems} problem(s) found")
        return 1
    print("all checks passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

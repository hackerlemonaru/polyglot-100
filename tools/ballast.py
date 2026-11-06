#!/usr/bin/env python3
"""
Reproducible ballast.

This repository deliberately carries a large binary payload to sit near
GitHub's recommended repository ceiling. The payload is honest about what it
is: padding. It is

  * deterministic, derived from a fixed seed with SHAKE-256, so anyone can
    regenerate byte-identical files without downloading them;
  * incompressible, so the on-disk size is real rather than a git-pack illusion;
  * split into parts well under GitHub's 100 MiB per-file hard block;
  * excluded from Linguist statistics, so it cannot disturb the 1% split.

Generate:  python3 tools/ballast.py --parts 10 --mib 90
Verify:    python3 tools/ballast.py --check
Remove:    python3 tools/ballast.py --clean

If you do not want it at all, clone sparsely instead:
  git clone --filter=blob:none --sparse <url>
  git sparse-checkout set langs tools docs
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DIR = ROOT / "assets" / "ballast"
SEED = "polyglot-100/ballast/v1"
CHUNK = 1 << 20  # 1 MiB


def part_bytes(part: int, mib: int) -> bytes:
    """Deterministic, incompressible content for one part."""
    buf = bytearray()
    for chunk in range(mib):
        key = f"{SEED}/part-{part:02d}/chunk-{chunk:06d}".encode()
        buf += hashlib.shake_256(key).digest(CHUNK)
    return bytes(buf)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--parts", type=int, default=10)
    ap.add_argument("--mib", type=int, default=90)
    ap.add_argument("--check", action="store_true")
    ap.add_argument("--clean", action="store_true")
    args = ap.parse_args()

    if args.mib >= 100:
        print("refusing: each part must stay under GitHub's 100 MiB block",
              file=sys.stderr)
        return 1

    if args.clean:
        n = 0
        for p in sorted(DIR.glob("*")):
            p.unlink()
            n += 1
        if DIR.exists():
            DIR.rmdir()
        print(f"removed {n} ballast files")
        return 0

    DIR.mkdir(parents=True, exist_ok=True)
    index_path = DIR / "INDEX.json"

    if args.check:
        if not index_path.is_file():
            print("no ballast present, nothing to check")
            return 0
        index = json.loads(index_path.read_text())
        bad = 0
        for item in index["parts"]:
            p = DIR / item["file"]
            if not p.is_file():
                print(f"  FAIL  {item['file']} missing")
                bad += 1
                continue
            h = hashlib.sha256()
            with p.open("rb") as f:
                while block := f.read(CHUNK):
                    h.update(block)
            if h.hexdigest() != item["sha256"]:
                print(f"  FAIL  {item['file']} checksum mismatch")
                bad += 1
            elif p.stat().st_size != item["bytes"]:
                print(f"  FAIL  {item['file']} size mismatch")
                bad += 1
            else:
                print(f"  ok    {item['file']}")
        print(f"\n{len(index['parts']) - bad}/{len(index['parts'])} parts verified")
        return 1 if bad else 0

    parts = []
    for i in range(args.parts):
        name = f"part-{i:02d}.bin"
        data = part_bytes(i, args.mib)
        (DIR / name).write_bytes(data)
        parts.append(
            {
                "file": name,
                "bytes": len(data),
                "sha256": hashlib.sha256(data).hexdigest(),
            }
        )
        print(f"  wrote {name}  {len(data) / (1 << 20):.0f} MiB", flush=True)
        del data

    total = sum(p["bytes"] for p in parts)
    index = {
        "purpose": "deliberate, reproducible padding; not part of the exhibits",
        "generator": "shake_256(f'{seed}/part-{i:02d}/chunk-{c:06d}') per 1 MiB",
        "seed": SEED,
        "chunk_bytes": CHUNK,
        "parts": parts,
        "total_bytes": total,
        "total_mib": round(total / (1 << 20), 2),
        "counted_by_linguist": False,
        "regenerate": f"python3 tools/ballast.py --parts {args.parts} --mib {args.mib}",
    }
    index_path.write_text(json.dumps(index, indent=2) + "\n")
    print(f"\n{total:,} bytes ({total / (1 << 20):.1f} MiB) across {len(parts)} parts")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

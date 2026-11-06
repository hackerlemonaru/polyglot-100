#!/usr/bin/env python3
"""
Render the two SVG figures from MANIFEST.json, using the real Linguist colours
for each language so the figures match what GitHub draws.

Falls back to an evenly spaced HSL wheel if a colour is not in the local
languages.yml cache.
"""
from __future__ import annotations

import colorsys
import json
import math
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
YML_URL = (
    "https://raw.githubusercontent.com/github-linguist/linguist/master/"
    "lib/linguist/languages.yml"
)
CACHE = ROOT / "tools" / ".languages.yml"


def load_colors() -> dict[str, str]:
    try:
        import yaml  # type: ignore
    except ImportError:
        return {}
    text = None
    if CACHE.is_file():
        text = CACHE.read_text()
    else:
        for url in (YML_URL,):
            try:
                with urllib.request.urlopen(url, timeout=20) as r:
                    text = r.read().decode()
                CACHE.write_text(text)
                break
            except Exception:
                pass
    if not text and Path("/tmp/languages.yml").is_file():
        text = Path("/tmp/languages.yml").read_text()
    if not text:
        return {}
    try:
        data = yaml.safe_load(text)
    except Exception:
        return {}
    return {k: v["color"] for k, v in data.items() if v.get("color")}


def fallback(i: int, n: int) -> str:
    r, g, b = colorsys.hsv_to_rgb(i / n, 0.62, 0.86)
    return f"#{int(r * 255):02x}{int(g * 255):02x}{int(b * 255):02x}"


def main() -> None:
    m = json.loads((ROOT / "MANIFEST.json").read_text())
    entries = m["languages"]
    n = len(entries)
    colors = load_colors()
    swatches = [
        colors.get(e["name"]) or fallback(e["index"] - 1, n) for e in entries
    ]

    out = ROOT / "assets"
    out.mkdir(exist_ok=True)

    # ---- the bar: 100 equal slices -------------------------------------
    W, H, R = 1200, 28, 14
    slice_w = W / n
    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" '
        f'viewBox="0 0 {W} {H}" role="img" '
        f'aria-label="One hundred languages, one percent each">',
        "<title>polyglot-100: one hundred languages at exactly 1% each</title>",
        f'<defs><clipPath id="c"><rect width="{W}" height="{H}" rx="{R}"/>'
        "</clipPath></defs>",
        f'<g clip-path="url(#c)">',
    ]
    for i, (e, col) in enumerate(zip(entries, swatches)):
        parts.append(
            f'<rect x="{i * slice_w:.3f}" y="0" width="{slice_w:.3f}" '
            f'height="{H}" fill="{col}"><title>{e["index"]:03d} '
            f'{e["name"]} - 1.00%</title></rect>'
        )
    parts.append("</g></svg>")
    (out / "language-bar.svg").write_text("\n".join(parts), encoding="utf-8")

    # ---- the wheel: 100 equal arcs -------------------------------------
    S, cx, cy, r_out, r_in = 520, 260, 260, 232, 150
    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{S}" height="{S}" '
        f'viewBox="0 0 {S} {S}" role="img" '
        f'aria-label="One hundred equal arcs, one per language">',
        "<title>polyglot-100: one hundred equal arcs</title>",
        f'<rect width="{S}" height="{S}" fill="#0d1117" rx="24"/>',
    ]
    step = 2 * math.pi / n
    gap = step * 0.12
    for i, (e, col) in enumerate(zip(entries, swatches)):
        a0 = -math.pi / 2 + i * step + gap / 2
        a1 = -math.pi / 2 + (i + 1) * step - gap / 2
        x0o, y0o = cx + r_out * math.cos(a0), cy + r_out * math.sin(a0)
        x1o, y1o = cx + r_out * math.cos(a1), cy + r_out * math.sin(a1)
        x0i, y0i = cx + r_in * math.cos(a1), cy + r_in * math.sin(a1)
        x1i, y1i = cx + r_in * math.cos(a0), cy + r_in * math.sin(a0)
        d = (
            f"M {x0o:.2f} {y0o:.2f} "
            f"A {r_out} {r_out} 0 0 1 {x1o:.2f} {y1o:.2f} "
            f"L {x0i:.2f} {y0i:.2f} "
            f"A {r_in} {r_in} 0 0 0 {x1i:.2f} {y1i:.2f} Z"
        )
        parts.append(
            f'<path d="{d}" fill="{col}"><title>{e["index"]:03d} '
            f'{e["name"]} - 1.00%</title></path>'
        )
    parts += [
        f'<text x="{cx}" y="{cy - 14}" text-anchor="middle" '
        'font-family="ui-monospace,SFMono-Regular,Menlo,monospace" '
        'font-size="76" font-weight="700" fill="#e6edf3">100</text>',
        f'<text x="{cx}" y="{cy + 20}" text-anchor="middle" '
        'font-family="ui-monospace,SFMono-Regular,Menlo,monospace" '
        'font-size="21" fill="#8b949e">languages</text>',
        f'<text x="{cx}" y="{cy + 54}" text-anchor="middle" '
        'font-family="ui-monospace,SFMono-Regular,Menlo,monospace" '
        'font-size="21" fill="#58a6ff">1.00% each</text>',
        "</svg>",
    ]
    (out / "language-wheel.svg").write_text("\n".join(parts), encoding="utf-8")
    print(f"rendered assets/language-bar.svg and assets/language-wheel.svg "
          f"({len(colors)} known Linguist colours)")


if __name__ == "__main__":
    main()

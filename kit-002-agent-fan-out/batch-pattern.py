"""Batching + merge scaffold for the agent fan-out pattern.

Usage:
  python batch-pattern.py split catalog.json 4     -> batch-1.json ... batch-4.json
  python batch-pattern.py merge results/*.json     -> INDEX.md skeleton + gaps report

The philosophy: everything deterministic stays in code (split, merge,
dedupe, index); agents only do the judgment step in the middle.
"""
import json
import sys
from pathlib import Path


def split(catalog_path: str, n: int) -> None:
    items = json.load(open(catalog_path))
    base = Path(catalog_path).parent
    # round-robin (i::n) balances batches when items are date-sorted,
    # so no agent gets all the long/old items
    for i in range(n):
        batch = items[i::n]
        out = base / f"batch-{i + 1}.json"
        json.dump(batch, open(out, "w"), indent=2)
        print(f"{out}: {len(batch)} items")


def merge(result_paths: list[str]) -> None:
    results = []
    for p in result_paths:
        results.extend(json.load(open(p)))

    # holes are findings, not embarrassments — surface them first
    missing = [r for r in results if r.get("status") != "ok"]
    if missing:
        print(f"\n!! {len(missing)} items degraded:")
        for r in missing:
            print(f"   - {r['id']}: {r.get('status')}")

    seen: set[str] = set()
    lines = ["# Index\n"]
    themes: dict[str, list[dict]] = {}
    for r in results:
        if r["id"] in seen:
            continue  # duplicate = an agent retried; keep first
        seen.add(r["id"])
        themes.setdefault(r.get("theme", "uncategorized"), []).append(r)

    for theme, rows in sorted(themes.items()):
        lines.append(f"\n## {theme}\n")
        for r in rows:
            lines.append(f"- **[{r['id']}](notes/{r['file']})** — {r['highlight']}")

    Path("INDEX-draft.md").write_text("\n".join(lines))
    print(f"\nINDEX-draft.md: {len(seen)} items, {len(themes)} raw themes")
    print("Next: consolidate raw themes into 5-9 problem-oriented sections by hand or with one model call.")


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else ""
    if cmd == "split":
        split(sys.argv[2], int(sys.argv[3]))
    elif cmd == "merge":
        merge(sys.argv[2:])
    else:
        print(__doc__)

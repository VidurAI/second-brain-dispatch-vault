#!/usr/bin/env bash
# graveyard-audit.sh — the two-minute cemetery census for any notes folder.
# Reports how much of your "second brain" hasn't been touched in N days.
#
# Usage:  ./graveyard-audit.sh <notes-directory> [days]
#         days defaults to 90.
#
# Works on macOS and Linux. Read-only: it never modifies your notes.

set -euo pipefail

DIR="${1:-}"
DAYS="${2:-90}"

if [ -z "$DIR" ] || [ ! -d "$DIR" ]; then
  echo "Usage: $0 <notes-directory> [days]" >&2
  exit 1
fi

# Count note-like files (extend the extensions list to match your system)
TOTAL=$(find "$DIR" -type f \( -name "*.md" -o -name "*.txt" -o -name "*.org" \) | wc -l | tr -d ' ')

if [ "$TOTAL" -eq 0 ]; then
  echo "No note files (.md/.txt/.org) found under $DIR — adjust the extension list in the script."
  exit 0
fi

STALE=$(find "$DIR" -type f \( -name "*.md" -o -name "*.txt" -o -name "*.org" \) -mtime +"$DAYS" | wc -l | tr -d ' ')
PCT=$(( STALE * 100 / TOTAL ))

echo "=== Graveyard audit: $DIR ==="
echo "Notes found:                 $TOTAL"
echo "Untouched in ${DAYS}+ days:      $STALE  (${PCT}%)"
echo ""
echo "--- Your 10 oldest untouched notes (the deepest graves) ---"
# -mtime +N then sort by modification time, oldest first
if [ "$(uname)" = "Darwin" ]; then
  find "$DIR" -type f \( -name "*.md" -o -name "*.txt" -o -name "*.org" \) -mtime +"$DAYS" -exec stat -f "%m %Sm %N" -t "%Y-%m-%d" {} \; \
    | sort -n | head -10 | awk '{$1=""; print}'
else
  find "$DIR" -type f \( -name "*.md" -o -name "*.txt" -o -name "*.org" \) -mtime +"$DAYS" -printf "%T@ %TY-%Tm-%Td %p\n" \
    | sort -n | head -10 | awk '{$1=""; print}'
fi
echo ""
if [ "$PCT" -ge 80 ]; then
  echo "Verdict: this is a cemetery. ${PCT}% of your second brain hasn't been touched in $DAYS days."
elif [ "$PCT" -ge 40 ]; then
  echo "Verdict: half-garden, half-graveyard (${PCT}% stale). The untended rows are winning."
else
  echo "Verdict: alive (${PCT}% stale). Whatever you're doing — it's the schedule, keep it."
fi
echo ""
echo "Next step: put ONE recurring revisit on the calendar (see calendar-template.md)."
echo "Caveat: mtime is a proxy — some sync tools rewrite timestamps. If the numbers"
echo "look too good, check whether a backup/sync touched everything recently."

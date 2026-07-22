# The Feed Job — sync template

The job that waters the garden on a clock. Two versions: agentic (if you run Claude Code / any scheduled agent) and low-tech (no agent needed).

## Agentic version (scheduled task prompt)

Schedule weekly (or match your source's cadence). Paste into your scheduler as the task prompt, filling the `<>` slots:

```
Sync my second brain from <SOURCE — e.g. the YouTube channel URL / RSS feed / read-later export>.

1. List items published since the last sync (check <CORPUS_DIR>/sources.json for
   the newest date already captured — never re-add existing items).
2. For each new item: fetch the transcript/content and write one distilled note to
   <CORPUS_DIR>/notes/YYYY-MM-DD-<slug>.md with this structure:
   - TL;DR (2-3 sentences)
   - Actionable learnings (bullets — things a reader could literally do)
   - Key frameworks & mental models (named, attributed)
   - One notable quote
3. Update <CORPUS_DIR>/sources.json (add the new items with dates) and the
   INDEX.md one-line summaries.
4. Log the run: append "<date> sync — N new items: <titles>" to the sync log.
   If zero new items, log that too — a dated "nothing new" entry proves the
   system is alive, not stalled.

Honesty rule: distill, don't transcribe. Notes are paraphrase + attribution,
never republication.
```

Design notes that saved us pain:
- **Check state before writing.** The "newest date already captured" check makes re-runs safe after a crash.
- **Log zero-item runs.** Silence is indistinguishable from a dead cron. A dated "0 new" line is a heartbeat.
- **One note per item, one item per note.** Small files; agents (and future-you) navigate them cold.

## Low-tech version (no agent)

1. Turn on your source's scheduled delivery: read-later app daily digest, RSS-to-email rule, or the channel's notification bell → a dedicated email folder.
2. Fix a processing window (2-3 per week beats daily; batching is fine — the schedule matters, not the frequency).
3. In the window, process each arrival once with the 4D checklist (`4d-checklist.md`). What survives "Do" gets a note in your system; everything else gets Dated or Deleted.

The two versions are the same system. The agent just removes the human from step 3's willpower loop.

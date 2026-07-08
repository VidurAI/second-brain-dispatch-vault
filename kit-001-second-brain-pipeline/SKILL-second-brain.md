---
name: second-brain
description: Turn any YouTube channel, podcast, or author catalog into a queryable second brain — harvest the catalog, load NotebookLM, distill every item into actionable-learnings notes via parallel agents, and build a thematic index. Use whenever the user says "build a second brain from X", "turn this channel into notes", or "distill this catalog".
---

# Second Brain Pipeline

Install: save this file as `.claude/skills/second-brain/SKILL.md` in your project. Then: "build a second brain from [channel/author]".

## Steps

### 1. Harvest the catalog
Get the target's long-form item list (title, date, URL). For YouTube: any catalog tool or the channel's /videos page. SKIP shorts/clips — they're repurposed long-form and will duplicate every idea. Save as `second-brain/<name>/catalog.json`.

### 2. Load NotebookLM (if available)
If a NotebookLM tool/MCP is connected: create a notebook named "<Name> — Second Brain", bulk-add all URLs as sources (NotebookLM pulls YouTube transcripts natively). This becomes the chat-with-the-corpus layer. If not available, tell the user to add sources manually at notebooklm.google.com — 5 minutes — and continue.

### 3. Distill in parallel
Split the catalog into ~4 batches. Spawn one background agent per batch. Each agent, per item:
1. Get the transcript (NotebookLM source content, or any transcript tool).
2. Distill into the note template in `distill-template.md` (same kit) — actionable bullets only, platitudes banned, numbers/study names intact.
3. Write `second-brain/<name>/notes/<date>-<slug>.md`.
Each agent's final message: a JSON array of {item, file, theme, topLearning} — nothing else.

### 4. Index by theme
Merge agent results. Group into 5-9 themes by PROBLEM (money, focus, learning...), not by date. Write `INDEX.md`: per theme, each note linked with its single best learning inline. The index is the retrieval surface — a pile of notes without it is a graveyard.

### 5. Verify before trusting
Spot-check the corpus's 3 most load-bearing statistics against original sources (search the study, not the video). Log corrections in the notes. Rule: trust the frameworks, verify the digits.

## Maintenance mode
On "sync the second brain": diff the channel's current uploads against catalog.json, process only new items, update INDEX.md. Consider a monthly scheduled task.

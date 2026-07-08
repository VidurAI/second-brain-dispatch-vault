# Kit 001 — The Second Brain Pipeline

Companion kit to Dispatch issue #1 ("I turned 58 YouTube videos into a second brain in one afternoon"). This is the working system, not a summary of it. Time to first result: ~15 minutes. Cost: free tooling throughout.

## What's in the kit
- `README.md` — this runbook
- `distill-template.md` — the per-video note template + the exact distillation prompt with the honesty rules
- `SKILL-second-brain.md` — a drop-in Claude Code skill that runs the whole pipeline on any channel

## Prerequisites
- A Google account (NotebookLM, free tier is fine — 50 sources/notebook)
- Claude (any plan) — Claude Code if you want the automated version, plain chat works manually
- One YouTube channel/podcast/author you keep coming back to

## The pipeline (manual version, 15 min)

**1. Pick a corpus, not a video.** A creator's catalog is a mind; one video is a clip. Start with their 10 best long-form pieces.

**2. Harvest — skip the shorts.** List title + URL for each. Shorts are repurposed clips; they duplicate every idea 4x.

**3. Load NotebookLM.** notebooklm.google.com → new notebook → add each YouTube URL as a source. NotebookLM pulls transcripts itself — no scraping. Ask it the question you'd pay to have answered. This step alone is 80% of the value.

**4. Distill with the template.** For each video, run the prompt in `distill-template.md`. The template is the whole game: actionable bullets only, platitudes banned, numbers and study names kept intact.

**5. Index by theme, not date.** One page, sections by problem (money, focus, learning...), each note listed under its theme with its single best learning inline. Themes are how you'll come looking.

**6. Interrogate like a skeptic.** Ask the notebook where the creator contradicts themselves. Spot-check their 3 most load-bearing statistics against the original studies. (We found 3 errors in a 1.2M-subscriber channel — trust the frameworks, verify the digits.)

## The automated version
Drop `SKILL-second-brain.md` into your project's `.claude/skills/second-brain/SKILL.md` and tell Claude Code: "build a second brain from [channel]". The skill parallelizes step 4 across agents — 58 videos took us ~8 minutes of wall-clock. (The fan-out mechanics are Kit 002.)

## Maintenance
Monthly: diff the channel's uploads against your catalog, add new videos to the notebook, distill, re-index. Ten minutes. A second brain you don't feed is a graveyard.

# Kit 007 — The Scheduled-Sync System

Companion to Dispatch issue #7 (Most second brains are graveyards. Mine runs on cron.). This kit is the maintenance rig: the two-job pattern that keeps a second brain alive on a schedule instead of on willpower, plus an audit script that tells you how dead your current system already is.

## What's in the kit
- `README.md` — the pattern, the setup runbook, honest cost/time numbers from our run
- `sync-job-template.md` — the **feed job**: a generalized scheduled-task prompt that pulls new material from your source into the corpus, with dated log entries
- `forced-use-job-template.md` — the **forced-use job**: a scheduled task that drags the corpus back into daylight and makes it produce something
- `graveyard-audit.sh` — point it at any notes folder; it reports what hasn't been touched in N days (the two-minute cemetery census)
- `4d-checklist.md` — the touch-it-once processing ritual (Do / Delegate / Date / Delete), credited to its creator
- `calendar-template.md` — the recurring-review event with the implementation-intention wording that actually sticks (71% vs 32%, Gollwitzer & Brandstätter 1997)

## The pattern in one paragraph
A second brain dies from two directions: the intake stops (nothing new arrives, the system fossilizes) or the review never happens (material arrives and rots unread — savings on relearning drop to ~a quarter within a day; Murre & Dros 2015). Both failures are willpower failures, and the fix for willpower failures is schedule, not resolve: implementation intentions — fixed time, place, trigger — roughly doubled follow-through in the classic study. So run two standing jobs. The **feed job** waters the garden on a clock (pull new source material in, log it with a date). The **forced-use job** empties it on a clock (a weekly output — a newsletter, a review doc, a decision memo — that *must* draw on the corpus). A note that gets used weekly cannot become a gravestone.

## Setup runbook (~15 minutes)
1. Run `graveyard-audit.sh` on your current notes folder first. Get the honest baseline — oldest untouched note, % untouched in 90 days. That number is your before picture.
2. Pick your feed. Whatever fills your system (a YouTube channel, RSS, a read-later app). Set up the sync using `sync-job-template.md` — as an agent scheduled task if you run one, or the low-tech fallback in the template (scheduled digest email + a fixed processing window).
3. Pick your forced use. The weekly artifact the corpus must produce. It needs a real consumer — even if that's future-you reading a weekly review. `forced-use-job-template.md` has three sizes (10-min review, 1-hour synthesis, full publication).
4. Put the review appointment on the calendar with `calendar-template.md` — the when/where sentence is the whole trick.
5. Process the current inbox once with `4d-checklist.md`. Delete is a first-class option.

## Cost & time reality (our run)
The system behind this issue: a weekly scheduled task (the one that wrote the issue you read) plus periodic corpus syncs. Sync runs log dated entries like "2 new videos" per pull; a 58-video corpus has stayed current across multiple sync cycles since early July 2026. Cost: $0 beyond the AI subscription already in use; each sync is minutes of wall-clock, unattended. Honest failure to plan for: scheduled agent runs can die mid-task (one of ours was cut off by an API error while researching this very issue and had to be resumed) — build your jobs so a re-run is safe, i.e. they check state before writing (ours marks the topic in-progress first so a parallel run never double-writes).

## When to reach for it
- Your notes app's oldest items haven't been touched in a year (run the audit — don't guess)
- You keep "meaning to" review your notes and it keeps not happening — that's a goal intention doing what goal intentions do (32% completion); move it to a schedule
- You're about to build a new second brain: wire the two jobs in on day one, before the collecting starts

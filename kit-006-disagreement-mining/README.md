# Kit 006 — Disagreement Mining

Companion to Dispatch issue #6 (I made Newport, Forte, and Allen argue in one notebook). This kit is the full collision rig: load multiple thinkers' corpora into one grounded-source notebook and mine where they contradict each other — including the discipline that keeps the tool honest (demanding the dissolutions, not just the drama).

## What's in the kit
- `README.md` — the pattern, the setup runbook, honest cost/time numbers from our run
- `collision-prompt.md` — the exact two-query sequence, including the rigor clause that makes or breaks the result
- `source-picking-checklist.md` — how many pieces per thinker, what to load, what to avoid
- `implied-user-worksheet.md` — the "this system was designed for ___" exercise that turns contradictions into decisions
- `sources.md` — the verbatim 12-source list from the issue's build, so you can replicate it exactly

## The pattern in one paragraph
Reading gurus one at a time is a team of one — and solo reasoning drifts into confirmation bias (Mercier & Sperber, 2011), while groups containing genuine disagreement perform dramatically better (9% vs. 75% on the Wason task; Moshman & Geil, 1998). A grounded-source notebook (NotebookLM or equivalent) loaded with 3-4 essays each from multiple thinkers is the cheapest way to manufacture that disagreement: because the tool cites only from what you load, it can't smooth over a fight with training-data mush. Ask it for the direct contradictions — positions that cannot both be followed — AND for the apparent contradictions that dissolve on close reading. The fights that survive are where the advice is context-dependent, and the context that decides them is yours.

## Setup runbook (~15 minutes to first collision)
1. Pick 2-3 thinkers you actually follow (the value scales with how much you've already internalized them uncritically).
2. Use `source-picking-checklist.md` to collect 3-4 public pieces per thinker. Canonical statements of their system beat hot takes.
3. Create a fresh notebook (NotebookLM is free), add all sources. Processing takes a minute or two.
4. Run query 1 from `collision-prompt.md` (the contradictions + dissolutions query). Then query 2 (the implied-user query).
5. For each surviving contradiction, fill in one line of `implied-user-worksheet.md` and make the call for your own situation.

## Cost & time reality (our run)
End-to-end for the issue's build: ~15 minutes — about 5 minutes hunting canonical URLs, ~2 minutes of source processing (12 sources), and two queries totaling ~3.5 minutes of wall-clock. Cost: $0 (free NotebookLM tier). One honest failure: our 12th source, Newport's paywalled New Yorker essay, silently failed to process — we swapped in his own blog post making the same argument. Check your source count after adding; paywalled URLs fail quietly. Result quality: 3 genuine contradictions with verbatim quotes, 2 expected contradictions the notebook correctly refused to manufacture, and a per-author map of who each system was designed for.

## When to reach for it
- You follow multiple thinkers in one domain and have never articulated where they conflict
- You're about to commit to a system (GTD, BASB, deep work, any of them) and want to know which parts assume a life you don't have
- Any research task where your sources look suspiciously unanimous — the collision prompt works on papers, strategy docs, and competing vendor pitches exactly as well as on productivity gurus

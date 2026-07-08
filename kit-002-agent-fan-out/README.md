# Kit 002 — The Agent Fan-Out

Companion to Dispatch issue #2 (the 4-agent parallel distillation). This kit is the general pattern: how to make AI process N things in parallel with output you can trust, while you drink your coffee.

## What's in the kit
- `README.md` — the pattern and when to use it
- `fan-out-prompt.md` — the batch-agent prompt template with the honest-output rules
- `batch-pattern.py` — the batching/merge scaffold

## The pattern in one paragraph
Don't ask one AI session to process 58 items — it degrades and you can't verify drift. Split the work into batches, spawn one agent per batch with an IDENTICAL rigid prompt, force each to return machine-readable results (JSON, no prose), then merge deterministically with a script. Parallelism buys speed; the rigid template buys consistency; the structured return buys a merge step that can't hallucinate.

## When to reach for it
- N similar items, each needing judgment (summarize, classify, extract, review)
- N > ~10 (below that, one session is simpler)
- You can define "good output" as a template — if you can't, fix that first; fan-out amplifies whatever you feed it

## The five rules that keep output honest
1. **Rigid template per item** — agents fill structure, they don't improvise format.
2. **Ban the failure mode by name** in the prompt ("no platitudes", "no summary-of-summary") — naming what bad looks like outperforms asking for good.
3. **Structured final message only** — the agent's last output is a JSON array, no prose. Parsing prose is where merges rot.
4. **Degrade explicitly** — tell agents what to do on failure (mark status: "no-transcript", never fabricate). An honest hole beats a confident fake.
5. **Merge with code, not with a model** — dedupe, sort, and index in a script. Deterministic steps stay deterministic.

## Cost & time reality (our run)
58 transcripts, 4 agents, ~8 minutes wall-clock, ~480K tokens total. One session doing it serially: est. 45+ minutes with visible quality slide after item ~20.

# Kit 005 — The Plagiarism Firewall

Companion to Dispatch issue #5 (second brain → publication: closing the consumption→creation loop without becoming a plagiarism machine). This kit is the loop itself: the pipeline that turns a second brain from a read-only archive into a publication engine, with the honesty guardrails installed *before* the output gets fluent.

## What's in the kit
- `README.md` — the pattern, why detection can't be your guardrail, and the setup runbook
- `honesty-rules-template.md` — the four precommitment rules as a drop-in template you adapt and post where you publish
- `attribution-decision-tree.md` — idea vs. expression vs. technique: what gets credited, what doesn't
- `verify-digit-workflow.md` — the fact-check prompts from our verification pipeline (pairs with Kit 003's STRIP audit)
- `cold-explain-runbook.md` — the drafting protocol: mission sentence → notes → cold explain → draft → adversarial critique

## The pattern in one paragraph
Most second brains die as warehouses — surveyed learners reread 8x more than they generate, and collecting *feels* like knowing. Closing the loop (publishing from your notes) fixes that, but inherits a new problem: internalize any source deeply enough and your "original" output can be their melody — the George Harrison failure mode, and it's subconscious by definition. The fix can't be detection (readers spot AI-styled imitation at below-chance rates; you'll do no better on your own drafts). The fix is precommitment: write hard rules into your pipeline while breaking them still feels like breaking something, then let the pipeline — not your judgment at publish time — enforce them.

## Why the guardrail is intent, not detection
Copyright law won't stop you: it protects expression only, never ideas, frameworks, or methods (U.S. Copyright Office, Circular 33). And detection won't stop you either: in Porter & Machery (2024), 1,634 readers distinguished AI text imitating famous poets at 46.6% — below chance. If neither law nor readers can catch the borrowing, the only working gate is the one you install on purpose, early, in writing. That's what this kit ships.

## Setup runbook (~15 minutes to running)
1. Copy `honesty-rules-template.md`, fill in your four rules (ours are pre-filled as the default), and put them where your publish flow will hit them — a pre-publish checklist, a pinned note, a CI gate if you're fancy.
2. Wire `cold-explain-runbook.md` into your drafting habit: mission sentence before consuming, cold explain before drafting. The cold explain is the load-bearing step — retrieval practice beats rereading ~80% to 36/33% (Karpicke & Roediger, 2008), and whatever survives the closed-book explain is what you actually own.
3. Before any stat ships, run it through `verify-digit-workflow.md`. A video citing a study is not a source.
4. At attribution decisions, use `attribution-decision-tree.md`. Two-minute call, every time, no vibes.

## Cost & time reality (our run)
The four rules were written on day one of the publication — before issue #1 — and they've gated five issues since. Per-issue overhead: the cold explain adds ~15 minutes, digit verification ~30–60 minutes per issue (5–9 stats each), attribution calls ~2 minutes apiece. The one rule that came later (precommitment as an explicit principle, rule 4) was named by a reader — which is its own lesson: publish the rules and readers will harden them for you.

## When to reach for it
- Your second brain is full and your publish queue is empty (the collector's fallacy, live)
- You publish from heavily-internalized sources — one creator, one book, one field — and can no longer tell which phrasings are yours
- You use AI anywhere in drafting (the MIT preprint's LLM group couldn't quote essays they'd written minutes earlier — 83.3% failed; labels fall off faster with a model in the loop)

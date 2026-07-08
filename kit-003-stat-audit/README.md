# Kit 003 — The Stat Audit

Companion to Dispatch issue #3 (fact-checking a 1.2M-subscriber creator against primary sources). This kit is the general pattern: audit any trusted source's statistics — a creator, a book, your own notes — in one evening, with verdicts you can defend.

## What's in the kit
- `README.md` — the pattern, the verdict rubric, and when to use it
- `claim-extraction-prompt.md` — pull every checkable statistic out of a corpus of notes
- `fact-check-agent-brief.md` — the researcher prompt with the primary-source rules and four-verdict rubric
- `strip-checklist.md` — the 5-point distortion check for any single viral stat (2 minutes, no agent needed)

## The pattern in one paragraph
Extract every numeric claim from your source into a flat list (claim, exact number, where it appeared). Sample honestly — across the source's whole range, not just the suspicious ones. Fan the list out to research agents (3 batches of 5 works well) with one non-negotiable rule: a claim is only verified at its *primary* source — a creator citing a study is not a source, and neither is a journalist citing it. Force one of four verdicts per claim: TRUE / DISTORTED / UNVERIFIABLE / FALSE. Then — before you publish a damning verdict — check the original wording of the claim against the source itself, because if your notes were AI-distilled, the error might be yours.

## The four-verdict rubric
- **TRUE** — the number matches the primary source within rounding.
- **DISTORTED** — a real study exists, but the number or framing is materially bent (wrong subgroup, stripped conditions, swapped units, upgraded inference). Name the gap.
- **UNVERIFIABLE** — no primary source findable after a genuine search. Often a "zombie stat"; note its known origin if traceable.
- **FALSE** — the primary source contradicts the claim.

No fifth verdict. "Basically true" and "true in spirit" are how distortions survive audits.

## When to reach for it
- Before building anything (a second brain, a decision, an article) on top of one source's claims
- When you catch one wrong stat and want to know if it's an outlier or a pattern
- On your own writing, before publishing — the audit is cheaper than the correction

## Fairness rules (the audit is worthless without them)
1. **Sample across the range**, not just claims that smell wrong.
2. **Primary sources only** — chase to the paper, the pricing page, the transcript.
3. **Verify the claim's original wording** before the worst verdicts — distillation errors are yours, not theirs.
4. **Report the clean ones too.** An audit that only publishes failures is itself a sampling distortion.
5. **Note vendor funding and study conditions** even on TRUE verdicts — a true number from a rigged setup still misleads.

## Cost & time reality (our run)
15 claims, 3 parallel research agents, ~45 minutes wall-clock, ~200K tokens total, plus one NotebookLM transcript query to adjudicate the FALSE verdict. Serial version by hand: a full day, and you'd quit at claim 8.

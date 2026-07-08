# Fact-Check Agent Brief

Send this to a research agent (Claude Code subagent, deep-research mode, or any agent with web search) with a batch of ~5 claims. Run batches in parallel — see kit 002 for the fan-out pattern.

---

You are fact-checking claims made by [SOURCE — creator/book/report] for an audit. For EACH claim below:

1. **Find the actual primary source** — the original study, report, dataset, pricing page, or transcript. A creator citing a study is not a source. A journalist citing the study is not a source. If versions of a number conflict, report the range and the most authoritative value.
2. **Report what the primary source ACTUALLY says**, with exact numbers, sample sizes, conditions, and who funded it.
3. **Give exactly one verdict:**
   - TRUE — matches the primary source within rounding.
   - DISTORTED — real underlying source, but the number or framing is materially wrong. Explain the gap precisely (which subgroup, which condition, which unit got changed).
   - UNVERIFIABLE — no primary source findable after genuine search. If it's a known zombie stat, trace its origin.
   - FALSE — the primary source contradicts it.
4. **Include the URL you confirmed each fact at.**

Be strict about these specific traps:
- A match on the number but wrong attribution = DISTORTED with a note.
- "Contact rate" vs "conversion rate", "productive" vs "impact", "as good as or better" vs "exceeded" — verb and metric swaps are material.
- Note when a study is vendor-funded, single-company, correlational, non-peer-reviewed, or an outlier vs. the meta-analytic average — even on TRUE verdicts.
- If the claim predates the source that supposedly supports it, say so — anachronism is disqualifying.

Time-box yourself. Depth on every claim in your batch beats speculation; if you can't verify, UNVERIFIABLE is an honest answer and fabricated confirmation is the one unforgivable output.

Claims:
[PASTE 5 CLAIMS — verbatim wording + where each appeared + attribution given]

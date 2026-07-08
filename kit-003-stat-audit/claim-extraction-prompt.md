# Claim-Extraction Prompt

Run this over your notes/corpus (works in any capable AI chat or agent; point it at the files or paste the text).

---

Extract every CHECKABLE statistical claim from the material below. A claim is checkable if it contains a specific number, percentage, multiplier, or named study result that a primary source could confirm or deny.

For each claim return:
1. **The claim verbatim** — exact wording, digits preserved (do not paraphrase numbers).
2. **Where it appeared** — file/video/chapter, with date if known.
3. **Attribution given, if any** — what source the material itself credits (e.g., "a Harvard study", "McKinsey", or none).
4. **Checkability guess** — likely primary source type: peer-reviewed study / corporate report / pricing page / speech transcript / unknown.

Rules:
- Skip pure opinions, predictions, and round rhetorical numbers ("99% of people won't do this").
- Skip math that is self-evidently just arithmetic (1.01^365 ≈ 37.8) — note it as "arithmetic, self-verifiable" instead.
- Do NOT judge truth at this stage. Extraction and verification are separate passes; mixing them biases the sample.
- Return a flat numbered list, no prose commentary.

After extracting, mark the ~15 claims that are most load-bearing (most repeated, most quoted, most decision-relevant) — that's the audit sample.

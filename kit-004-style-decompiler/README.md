# Kit 004 — The Style Decompiler

Companion to Dispatch issue #4 (extracting a writer's craft blueprint from their catalog). This kit is the general pattern: turn any writer's public corpus — videos, essays, a newsletter archive — into a one-page craft blueprint, then wire that blueprint into a writer + adversarial-critic loop that disciplines your own drafts.

## What's in the kit
- `README.md` — the pattern, the ethical line, and the setup runbook
- `decompile-question-set.md` — the structural questions to run against a corpus (the decompile)
- `blueprint-template.md` — the STYLE.md skeleton: seven dimensions every blueprint fills in
- `writer-skill-template.md` — the drafting prompt/skill with the three honesty rules pre-wired
- `critic-brief-template.md` — the adversarial editor that scores drafts 1–5 and blocks anything under 4

## The pattern in one paragraph
Collect the corpus (transcripts, posts — 20+ pieces minimum; consistency is what you're mining, and it only shows at volume). Load it into a long-context tool (NotebookLM, or any LLM with the corpus in context) and ask *structural* questions, never content questions: how do the first three sentences work, what's the story-to-instruction ratio, how does every piece end. Compile the answers into a one-page blueprint using the template. Then split the blueprint into two artifacts: a writer prompt that drafts under the blueprint's rules, and a critic prompt that scores drafts against it adversarially. The loop — draft, score, revise until every dimension ≥4 — is where the value lives. The blueprint alone is trivia; the enforced diff against your own defaults is the product.

## The ethical line (decide this before the blueprint gets good)
**Clone the craft, never the identity.** Hooks, ratios, structures, and closes are technique — technique isn't ownable, and writers have apprenticed on it since Franklin's Spectator method. The voice, the lived stories, and the name are a person. Write your honesty rules down *before* you decompile anyone. Ours are three lines:
1. **No fabricated personal stories.** You don't have their life. Use history, named research, and your own documented experience.
2. **Verify every digit.** Their stats don't transfer verified — chase each to a primary source before you repeat it (see Kit 003).
3. **Attribute named frameworks inline.** If their coined framework appears in your piece, their name appears next to it.

## Setup runbook (~15 minutes to running, one evening to a working blueprint)
1. Gather the corpus. YouTube: pull transcripts (yt-dlp or a transcript tool). Newsletters: save posts as text/markdown into one folder.
2. Load into NotebookLM (one notebook, all sources) or paste batches into a long-context chat.
3. Run `decompile-question-set.md` — one question per query, save every answer.
4. Fill `blueprint-template.md` from the answers. Ruthlessness rule: if a pattern doesn't appear in >70% of the corpus, it's not a pattern — cut it.
5. Paste the finished blueprint into `writer-skill-template.md` and `critic-brief-template.md` where marked.
6. Draft something. Score it with the critic. Revise until every dimension ≥4 — cap at two full cycles (perfectionism loops kill weekly cadence).

## Cost & time reality (our run)
58 video transcripts (17 months of a 1.2M-subscriber channel), decompiled via NotebookLM in one evening; the blueprint came out at one page. Writer + critic templates: another ~2 hours including the first scored draft. The critic loop adds ~20–40 minutes per issue and has caught something real every single time — including in the issue that describes it.

## When to reach for it
- You admire a writer and want to know *why* their pieces work, mechanically
- Your own writing has defaults you can't see (everyone's does — you can't diff against nothing)
- You publish on a cadence and need a quality gate that isn't your own tired judgment at 11pm

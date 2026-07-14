# Verify-Every-Digit Workflow

The fact-check pipeline behind the Dispatch's receipts sections. Runs per-stat, before anything ships. Pairs with Kit 003 (the STRIP audit) — this is the same machinery pointed at your own draft instead of someone else's catalog.

## The rule
A statistic may ship only if you confirmed it at a primary-ish source **this session**. A video citing a study is not a source. A blog citing a video citing a study is anti-source.

## Per-stat prompt (give this to your research agent, or run it yourself)

```
Claim to verify: "<the stat exactly as drafted>"
Where I got it: <video/newsletter/memory>

1. Find the ORIGINAL study/dataset/ruling this traces to. Chase past
   intermediaries: who actually measured this, when, on whom (n=?).
2. Report the number AS PUBLISHED at the original source, with URL.
3. Check the claim against the original for the five STRIP distortions:
   - Swapped units (tokens→words, contacts→conversions)
   - Trimmed conditions (lab constraints dropped, subgroup context gone)
   - Rounded to the ceiling (best subgroup quoted as the average)
   - Inflated inference (the study's verb quietly upgraded)
   - Pinned to the wrong thing (number attributed to the wrong actor/model)
4. Verdict: TRUE (within rounding) / DISTORTED (say how) / UNVERIFIABLE / FALSE.
5. If the source is a preprint, poll, or practitioner heuristic — say so;
   that caveat ships with the stat or the stat doesn't ship.
```

## Disposition table

| Verdict | What ships |
|---|---|
| TRUE | The stat, with the original source named (researcher, year, URL) in receipts |
| DISTORTED | The CORRECTED number with the original source — never the version you inherited |
| UNVERIFIABLE | Nothing. Dropped, not hedged. |
| FALSE | Nothing — and if the wrong version is widespread, that's a story lead |

## House style for receipts
- Body prose may round for rhythm (83.6% → 84%). The receipts section carries exact figures.
- Pick ONE phrasing per signature stat and reuse it verbatim across issues (we once cited the same study four slightly different ways in four issues; readers notice).
- Preprints get "(preprint — not yet peer-reviewed)" inline. Heuristics get "long-observed rule, not a controlled study."
- Never paywall the receipts. Verification is the brand; it stays free.

## Honest cost
5–9 stats per issue ≈ 30–60 minutes with an agent doing the chasing, longer by hand. Budget it. An issue that ships one wrong number costs more than every minute this workflow has ever taken.

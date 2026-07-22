# The Collision Prompt — exact two-query sequence

Run these in order, in the same conversation, against a notebook loaded with all corpora. Written for NotebookLM; works in any grounded-source tool that cites from your documents only.

## Query 1 — the contradictions (with the rigor clause)

```
These sources come from [N] thinkers: [NAME 1], [NAME 2], [NAME 3].
Identify every place where two or more of these authors DIRECTLY
CONTRADICT each other — not merely emphasize different things, but hold
positions that cannot both be true or cannot both be followed.

For each contradiction: (1) name it, (2) state each author's position
in their own words or a close paraphrase with the source, (3) say why
the two positions are incompatible in practice.

Rank the contradictions from most fundamental to most superficial.

Be rigorous: if an apparent contradiction dissolves on closer reading
(they're using words differently, or addressing different situations),
say so explicitly instead of forcing it.
```

**Do not delete the last paragraph.** Without the rigor clause, the model manufactures drama to satisfy the request — you'll get five "contradictions" of which three are terminology. With it, our run returned three real fights and explicitly dissolved two we expected. The dissolutions are half the value: they show you where the gurus secretly agree, which is the advice most likely to be load-bearing.

## Query 2 — the implied user (same conversation)

```
Now the reverse: what does each system assume about its user's life and
job? For each author, in 2-3 sentences: who is the implied user their
system was designed for (job type, era, constraints), citing textual
evidence. Then one final sentence: what is the single piece of advice
all three would endorse without reservation?
```

This is the query that converts contradictions into decisions. A fight between two authors is unresolvable in the abstract — it resolves instantly once you know one wrote for a 1990s executive and the other for a maker who needs four unbroken hours. Match yourself to an implied user and most of the fights pick their own winner.

## Reading the output

- **Verify quotes before repeating them.** Grounded tools quote accurately from loaded sources, but check the citation panel — a quote from a *comment section* on an author's blog is not the author (our run surfaced several commenter quotes; the tool attributed them correctly, but skimming would have missed it).
- **A contradiction the tool dissolves is a finding, not a failure.** Write it down with the same care as the survivors.
- **If everything comes back as agreement,** your sources are too similar — see the source-picking checklist.

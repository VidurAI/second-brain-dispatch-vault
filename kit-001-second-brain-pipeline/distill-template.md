# The Distillation Template + Prompt

## Why a rigid template
Most notes die as summaries-of-summaries. The template forces every note to answer one question: *what would I actually DO with this?* If a bullet can't be acted on tonight, it doesn't survive.

## The note template

```markdown
# <Video title>

- **Video:** <url>
- **Published:** <date>
- **Topics:** <2-4 tags from YOUR fixed tag set — keep it under 10 tags total>

## TL;DR
<2-3 sentences: the core argument>

## Actionable learnings
<5-10 bullets. Each = a concrete, imperative action or decision rule
("Block 90 minutes before 9am for...", "When X happens, do Y").
Keep specific numbers, tools, prompts, book names. No platitudes.>

## Key frameworks & mental models
<0-4 bullets: named framework + one-line explanation. Omit if none.>

## Notable quote
<One quote worth keeping. Omit if nothing stands out.>
```

## The distillation prompt (paste with each transcript)

```
Distill this transcript into the template below.

Rules:
- Every learning must be something the reader could literally DO —
  "have a growth mindset" dies; "put your phone in another room
  during deep work, because visible phones measurably drain
  cognition" survives.
- Keep every specific number, study name, tool, and book title intact.
- If the video is pure storytelling with thin actionable content,
  say so honestly in the TL;DR and extract whatever principles exist.
- No filler, no summary-of-summary.

[TEMPLATE]
[TRANSCRIPT]
```

## The index pattern

One `INDEX.md`, organized by theme (problem), not by date:

```markdown
## <Theme, e.g. "Learning & thinking">
- **[Video title](notes/file.md)** (date)
  <its single best actionable learning, one sentence>
```

Retrieval rule: when a real problem shows up, you open the theme, not your memory.

# The Batch-Agent Prompt Template

Use one copy per agent, identical except the batch file path. Adapt the [BRACKETS].

```
You are processing a batch of [ITEMS] into [OUTPUT KIND].

Your batch: read [PATH/batch-N.json] — an array of
{id, title, source, outfile}.

For EACH item, sequentially:
1. [GET THE INPUT — e.g., fetch the transcript via X; if it fails,
   retry once after finishing the others; if it still fails, write
   the output file with a "[input] unavailable" note and continue.
   NEVER fabricate the input.]
2. Produce output following this EXACT template:

[PASTE THE RIGID PER-ITEM TEMPLATE HERE]

3. Write it to the item's `outfile` path.

Rules:
- [NAME THE FAILURE MODE: e.g., "every bullet must be something the
  reader could literally DO — no platitudes, no summary-of-summary"]
- Keep specific numbers, names, and sources intact.
- If an item is thin, say so honestly in its output rather than padding.

When done, your final message must be ONLY a JSON array (no prose):
[{"id": "...", "file": "<basename written>",
  "theme": "<3-6 word theme>",
  "highlight": "<single best extract, one sentence>",
  "status": "ok" | "input-unavailable"}]
— one entry per item in your batch.
```

## Why each part exists
- **"sequentially"** — parallelism lives at the agent level, not inside one agent; inside-agent juggling drops items.
- **The retry-then-degrade clause** — without it, agents either stall on one bad item or silently skip it.
- **"ONLY a JSON array (no prose)"** — your merge step will thank you; any prose tolerance and 1 agent in 4 will chat.
- **status field** — makes holes visible in the merge instead of discovered by a reader.
```

# The Forced-Use Job — output template

The job that empties the garden on a clock. The feed job alone builds a prettier graveyard; this one is what keeps notes alive, because a note that gets *used* weekly cannot become a gravestone.

Pick the size that matches your life. All three share the same skeleton: a scheduled trigger + an artifact that MUST draw on the corpus + a consumer who will notice if it doesn't ship.

## Size S — the 10-minute weekly review (consumer: future you)

Recurring calendar event (use `calendar-template.md` for the wording). The ritual:
1. Open the corpus. Pick ONE note — oldest untouched, or whatever the week's biggest decision touches.
2. Write three lines somewhere you'll see them: What does this note claim? What did I do differently this week because of it? What will I do with it next week?
3. If the answer to line 2 is "nothing" three weeks running, the note goes to 4D processing: it earns a Do, a Date, or a Delete.

## Size M — the 1-hour synthesis (consumer: your team / a friend / a study partner)

Weekly or biweekly. Produce one page that answers a real question using at least 3 corpus notes — a decision memo, a "what I learned this month," a teach-it-back explainer sent to one named person. The named person is load-bearing: an artifact nobody receives is a diary, and diaries rot.

## Size L — the publication (consumer: readers; this is our size)

A scheduled agent task that runs the full pipeline weekly. Ours (generalized):

```
Run the weekly issue pipeline:
1. Pick the top unchecked topic from the topic queue; mark it in-progress
   immediately (so a parallel/re-run never double-writes).
2. Research it — every statistic independently verified with a source URL;
   unverifiable claims are dropped, not softened.
3. Draft the issue in the house style, drawing on the corpus WITH attribution.
4. Run an adversarial critique pass; revise until dimensions score ≥4
   or two cycles max (perfectionism loops burn the week).
5. Stage the draft for human review. NEVER auto-publish — the human owns
   the send button.
6. Update the topic queue and notify with an honest summary including
   caveats and remaining weaknesses.
```

Design notes:
- **The human gate is not optional.** Scheduled jobs draft; people publish. An automated system that publishes unsupervised under your name is a different (worse) product.
- **Two-cycle cap on revision.** The archive compounds; a single issue doesn't have to be perfect.
- **The pipeline forces corpus contact.** Step 3's "drawing on the corpus" is the maintenance disguised as production — every issue is a review session that happens to ship.

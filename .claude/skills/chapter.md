# Chapter

## Purpose
Close the week. Record what happened, what mattered, what shifted, and where
the story goes next. The human drives this — Claude synthesizes from the week's
raw material, but the human reviews, corrects, and seals the final record.

This is the most important recurring practice in LORE. Compass and Scribe keep
the facts honest. Chapter is where the human decides what the facts mean.

## Trigger
/chapter

## When to Run
Every Monday morning or Friday afternoon. LORE prompts automatically at session
start if /chapter has not been run in more than 8 days.

## Automatic Session Prompt (if overdue)
Appears as part of session startup — see CLAUDE.md Session Startup Protocol.

---

## Workflow

### Step 1 — Gather the week's material

Read:
- Wiki/log.md — all entries from the last 7 days
- Raw/ — all files with status: processed from the last 7 days
- Wiki/Initiatives/done/ — tasks completed this week
- Wiki/Initiatives/active/ — status of ongoing work
- Wiki/Ledger/ — decisions logged this week
- Wiki/~System/compass/ — most recent compass report if run this week
- Wiki/hot.md — any [!open] callouts

### Step 2 — Write the draft chapter

Write a structured draft, maximum 400 words. Ground every claim in actual
log entries and raw sources. Do not invent, infer, or speculate.

Structure:

---
## Chapter [N] — Week of [date]

### What happened
[3–5 specific things that occurred this week. Events, conversations, decisions,
shifts. Written as narrative sentences where possible, not a task list.
Each claim traceable to a log entry or raw source.]

### What mattered
[Of everything that happened, what actually moved the story?
1–2 things maximum. The moments that will still matter in six months.]

### What changed
[Any shift in understanding, direction, relationship, or risk.
Could be subtle — a realization, a concern that grew, a conviction that
strengthened. If nothing changed, say so honestly.]

### What's open
[Threads that didn't close. Questions outstanding. Decisions pending.
Pulled from [!open] callouts and active task cards — do not invent.]

### The next chapter
[One sentence on what next week is about. A direction, not a task list.]
---

### Step 3 — Present to user

Say exactly:
"Here's the draft of this chapter, drawn from your week.
Read it and tell me what's wrong, what's missing, or what doesn't sound true.
This record is yours — it should sound like you wrote it, not like a summary.
When it's right, type /seal to record it."

Then wait.

Accept corrections of any kind:
- Factual corrections ("the Atlas meeting was Thursday not Wednesday")
- Additions ("you didn't mention the conversation with Sarah")
- Reframing ("'setback' is too strong — it was a recalibration")
- Voice edits ("this doesn't sound like how I'd say it")
- Deletions ("remove that, it doesn't belong")

Revise and re-present. Repeat until the user types /seal.

Do not seal on behalf of the user. Do not suggest that the draft looks
good enough. Wait for /seal.

### Step 4 — On /seal

Execute all of the following:

**Write the chapter file:**
Path: Wiki/Ledger/YYYY-MM-DD-chapter-[N].md
Frontmatter:
---
type: chapter
chapter: [N]
week_of: YYYY-MM-DD
authored_by: [user name from identity.md]
sealed: YYYY-MM-DD
---
[Full final chapter text]

**Update hot.md:**
Replace the previous weekly summary section with a 2–3 sentence summary
of this chapter. Do not delete other [!open] callouts in hot.md.

**Update context.md:**
Find and update these two fields:
current_chapter: [N]
last_chapter_sealed: YYYY-MM-DD

**Create task cards for open items:**
For each item in "What's open" that does not already have a task card:
Create a task card in Wiki/Initiatives/backlog/ with:
  title: [the open thread or question]
  source: [[chapter file link]]
  status: backlog

**Flag Canon candidates:**
If any item in the chapter looks like it should update the Canon
(a significant customer change, product shift, language change, competitor move),
add a note to Wiki/hot.md:
"[!open] Potential Canon update: [description]. Run /scribe to review."

**Append to log:**
## [YYYY-MM-DD] chapter | Week of [date] — [one clause summary of what mattered]

**Respond:**
"Chapter [N] sealed.

[One sentence naming the most significant thing from "What mattered" —
stated as a fact, not a congratulation. E.g. "The Atlas decision is now
behind you." or "This was the week the positioning clarified."
Do not say "great work" or "well done."]

[If there's an open question or next chapter direction that feels
particularly significant, one sentence surfacing it.]

The next chapter starts now."

---

## The Chapter Archive

All sealed chapters live in Wiki/Ledger/ alongside decisions
and operation logs. They are searchable, linkable, and readable in sequence.

Chapter files are the long-arc value of LORE — the Chronicle. They should
be treated as permanent, first-person records. Never auto-edit a sealed chapter.
If a sealed chapter needs correction, the user must open it manually in Obsidian.

## The Chapter Counter

The chapter number [N] increments from 1 at the first /seal after /begin.
Track current_chapter in ~ Reference/context.md.
The number appears in:
- The chapter file name
- The chapter frontmatter
- The session startup output (quietly, after context is loaded):
  "Chapter [N] in progress — week of [date]"

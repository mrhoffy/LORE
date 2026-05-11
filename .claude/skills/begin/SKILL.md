---
name: begin
description: Run the LORE onboarding interview. Reads answers from ! Start Here/setup-questions.md or a voice transcript and writes all Reference files. Use once at the start, or re-run to update Reference files after a major life or role change.
---

## When to Use

- First-time setup: user has completed `! Start Here/setup-questions.md` (text path) or dropped a transcript into `Raw/onboarding/` (voice path)
- Re-onboarding: user's role, company, or context has changed materially and Reference files need a full refresh
- Triggered by user typing: `run begin`, `begin`, or `/begin`

## Inputs

One of:
- `! Start Here/setup-questions.md` with text answers filled in
- A transcript file in `Raw/onboarding/` (any filename ending in `.md`)

## Detection

1. Check `Raw/onboarding/` for any `.md` files. If present, use the most recent one as the source (voice path).
2. If no transcript found, read `! Start Here/setup-questions.md` and check whether answers have been filled in (look for content after `> Your answer:` lines that is not blank).
3. If neither is ready, stop and tell the user: "Complete `! Start Here/setup-questions.md` or drop a transcript into `Raw/onboarding/` first, then run begin again."

## Steps

### 1. Read the source

Read the full transcript or answered question file carefully before writing anything.

If using a transcript (voice path): the answers will not be neatly organized. Map spoken content to the six question sections by topic and intent. The user may have answered questions out of order, used different words, or added context not in the question list — include all of it.

If using the text path: extract each answer directly from under its question.

---

### 2. Write `~ Reference/identity.md`

Populate with:
- Name, role, company, and what the user is actually responsible for (from Q1)
- What a successful week looks like (from Q2)
- 90-day priorities (from Q3)
- Green flags / red flags and pattern recognition (from Q4)
- Key relationships: for each person named in Q10, write a one-line entry with name, role, and relationship context
- Outstanding commitments (from Q12) — format as a brief open threads list

Write in third person, present tense, declarative sentences. Not a list of bullet fragments — full sentences where possible.

---

### 3. Write `~ Reference/comms.md`

Populate with:
- Voice description (from Q14)
- Tone by context table — fill in each row based on Q17 answers. If the user did not specify a context, leave the cell blank rather than inventing.
- Structural preferences (from Q9 and Q16 combined — how they want output shaped)
- Things I never write (from Q16 — specific phrases and patterns)
- Things I always do (from Q17 and Q18 — patterns to preserve)
- Writing sample section: paste the example from Q15 verbatim if provided, or note "No sample provided yet — add one to calibrate voice."

The `comms.md` is the most important Reference file. If answers are thin, flag which sections need more detail and ask follow-up questions before writing.

---

### 4. Write `~ Reference/preferences.md`

Populate with:
- Daily rhythm and when the user is sharpest (from Q5)
- Response format preferences (from Q9)
- Decision-making style (from Q6)
- Energizing vs. draining work (from Q7)
- Things that slow them down / speed them up (from Q8 and Q9)

---

### 5. Write `~ Reference/tools.md`

Populate the Connected Sources table with actual statuses based on Q23 answers:
- If the user mentions Granola: set status to "active", note Obsidian plugin
- If the user mentions Fireflies: set status to "active", note Raw/fireflies/ folder
- For each tool in Q22: add to the Other Tools section with a one-line description of how it's used

Populate Q24 answer under a "Priority Integration" section — the one integration worth building first.

---

### 6. Write `~ Reference/operating-rules.md`

Populate with:
- Never do without approval: extract from Q19 — be specific, not generic. "Never send email" is weaker than "Never send email to investors, customers, or board members."
- Always do: extract patterns from Q20 and Q21 that imply positive rules
- Escalate immediately: synthesize from Q20 and Q21 — what past mistakes and protected values imply about when to stop and ask
- Custom rules: anything from Q19-Q21 that does not fit the above categories

---

### 7. Write `~ Reference/context.md`

After all five Reference files are written, synthesize a single ~300-word brief that captures the essential operating context across all five files. See `context.md` for the structure. This is the file Claude reads when it needs full context in one pass.

---

### 8. Update folder notes

Update all six folder notes to reflect the initial state after setup:

- `Wiki/Network/Network.md` — add any person or company pages seeded in step 9
- `Wiki/Initiatives/Initiatives.md` — add any task cards created from open threads
- `Wiki/Ledger/Ledger.md` — add any decisions captured from Q6 or Q20 answers
- Leave 2.3, 2.5, 2.6 folder notes as-is (no content yet)

---

### 9. Seed person pages

For each person named in Q10 (and Q12 where names are given):
- Create `Wiki/Network/[firstname-lastname].md` using the person page template
- Populate: name, role, company, relationship context, any open threads from Q12
- Set `status: seed` — these pages need more context before they are useful

Update `Wiki/index.md` with each new person page.

---

### 9. Update system files

- Update `Wiki/hot.md`: write a 2-3 sentence summary of who this user is and what they are focused on right now. This is the first real hot cache entry.
- Append to `Wiki/log.md`:
  ```
  ## [YYYY-MM-DD] begin | origin recorded — [user name], [role] — [one-line summary of 90-day focus]
  ```
- Update `~ Reference/tools.md` to mark any sources as `active` that the user confirmed are in use.

---

### 10. Report to user

After all files are written, produce a short summary:

```
Setup complete.

Files written:
- identity.md — [one line on what was captured]
- comms.md — [one line on what was captured, flag if writing sample is missing]
- preferences.md — [one line on what was captured]
- tools.md — [one line on what was connected]
- operating-rules.md — [one line on what was captured]
- context.md — synthesized brief
- [N] person pages seeded in Wiki/Network/

Things to review:
- [List any sections that had thin answers and need follow-up]
- [Flag if writing sample in comms.md is missing]
- [Flag if no meeting transcript tool was named]

Next step: open Claude Code in this folder and ingest your first meeting transcript.
```

---

## Safety Rules

- Never invent details not present in the answers. If a question was skipped or answered vaguely, leave the section as a placeholder and flag it in the report.
- Do not overwrite Reference files that already have substantial content without confirming with the user first.
- The onboarding transcript is a Raw file — write it to `Raw/onboarding/` and never modify it.

## What to Update Afterward

- If the user provides follow-up answers to flagged gaps, re-run specific file writes (not the full begin)
- Re-run begin in full if the user's role or company changes materially
- Append to log whenever Reference files are updated from setup output

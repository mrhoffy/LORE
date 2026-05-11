# Canon Review

## Purpose
Process the Canon proposals inbox. Review, accept, or decline proposals
submitted by team members via Scribe. Apply accepted changes to Canon files.

This skill is for the Canon owner only.

## Trigger
/canon-review

## When to Run
Weekly, alongside or just after running /chapter.
Also run any time the inbox has new proposals (LORE will note this at
session start if inbox.md has open items).

## Session Startup Note
If Canon/proposals/inbox.md exists and contains open proposals,
add to session startup output:
"[N] Canon proposals waiting for your review. Type /canon-review when ready."

---

## Workflow

### Step 1 — Read the inbox

Read Canon/proposals/inbox.md.
Read each open proposal file listed there.

If inbox has no open proposals: tell the user "No open proposals in the
Canon inbox. The Canon is current." End skill.

### Step 2 — Present proposals one at a time

For each open proposal, present in full:

─────────────────────────────────────────────────
CANON REVIEW — [date]
[N] open proposals.

[[X] of [N]] From [author] — [date proposed]
Affects: [canon file path]
Source: [[source link]]

[Brief summary of what changed and why it matters]

Canon currently says:
  "[exact current text]"
  OR: "No existing entry."

Proposed [replacement / addition]:
  "[exact proposed text]"

  A — Accept. Apply this change to the Canon file now.
  B — Accept with edits. Show me the proposed text to modify first.
  C — Decline. I'll add a note explaining why.
  D — Defer. Remind me next week.

→
─────────────────────────────────────────────────

Wait for A, B, C, or D.

### Step 3 — Execute decision

**For A (Accept):**
1. Open the affected Canon file
2. Apply the change exactly as proposed
3. Update the Canon file's frontmatter:
   last_updated: [today's date]
   updated_by: [owner name from identity.md]
   version: increment by 0.1 for minor changes, 1.0 for major changes
4. Mark proposal file status: merged
5. Remove from inbox.md
6. Append to Wiki/log.md:
   ## [YYYY-MM-DD] canon-update | [canon file] — [what changed] (proposed by [author])

**For B (Accept with edits):**
1. Present the proposed text for the owner to edit
2. Accept edits
3. Confirm: "Apply this version?"
4. On confirmation, proceed as A with the edited text

**For C (Decline):**
1. Ask: "Add a brief note explaining why? (This goes back to the proposer.)"
2. Accept the note
3. Update proposal file:
   status: declined
   declined_by: [owner name]
   declined_date: [today]
   decline_reason: [owner's note]
4. Remove from inbox.md
5. Append to log:
   ## [YYYY-MM-DD] canon-decline | [canon file] — proposal from [author] declined

**For D (Defer):**
1. Leave proposal file status: open
2. Leave in inbox.md
3. Add a reminder note to the proposal file:
   deferred_date: [today]
   review_by: [date 7 days from today]
4. Append to log:
   ## [YYYY-MM-DD] canon-defer | [canon file] — proposal from [author] deferred

### Step 4 — Summary

After all proposals are processed, present:

"Canon review complete.
[N] accepted. [N] declined. [N] deferred.
[If any accepted:] Changes applied to: [list of Canon files updated]
[If any deferred:] [N] proposals will resurface next week."

---

## Canon File Versioning

Minor changes (factual update, single field): increment version by 0.1
(e.g. 1.0 → 1.1)

Major changes (new section, significant reframe, structural change):
increment version by 1.0 (e.g. 1.2 → 2.0)

The version history is not tracked inside the file — it's tracked in the
git history (if using git submodule) or in the proposal files (if using
shared folder sync). The version number in frontmatter is a quick signal
to team members that something significant changed.

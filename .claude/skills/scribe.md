# Scribe

## Purpose
Surface earned knowledge from this LORE into the Canon so the whole team
benefits. Run when you've learned something that should update the shared
company, customer, product, language, or org files.

Scribe is the deliberate inverse of drift — not information quietly moving
away from truth, but information intentionally surfacing toward shared truth.

## Trigger
/scribe

Also triggered passively: Compass flags potential Canon candidates during
its weekly run. The user can queue them for Scribe with Y/N.

/scribe can be focused:
- `/scribe from [filename]` — surface from a specific raw file
- `/scribe customer [name]` — focus on a specific customer
- `/scribe language` — focus on language guide updates only

## When to Run
- After a significant customer call where something important changed
- After learning something about a competitor that reframes positioning
- After a product or company decision that changes how you'd describe things
- When Compass flags a personal wiki update as a potential Canon candidate
- Any time you think "everyone on the team should know this"

## Prerequisite
Canon must be configured (Canon/ folder must exist and be populated).
If not configured, tell the user: "Canon is not configured. See the team
setup guide in ! Start Here/CONNECTIONS.md to set up the Canon first."

---

## Workflow

### Step 1 — Scan for candidates

Read:
- All raw files with status: processed from the last 7 days
  (or since last Scribe run — check log.md for last scribe entry)
- Recent wiki updates from log.md (all UPDATE entries since last scribe run)
- Any [!open] items in hot.md flagged as "Potential Canon update"
- The Compass candidate flags from the most recent compass report
- The relevant Canon files in Canon/ for comparison

### Step 2 — Identify candidates

Compare what the personal LORE has learned against what the Canon currently says.
Look for:

**New facts:** Information in the personal wiki that has no equivalent in the Canon.
(A new procurement contact, a competitor capability, a customer pain point.)

**Contradictions:** Personal wiki content that conflicts with a Canon claim.
(Canon says annual contracts; recent notes say they moved to quarterly.)

**Outdated Canon content:** Canon that no longer reflects what LORE knows.
(A contact who has left, a product description customers no longer use.)

**Language drift:** Terms used in raw sources or wiki that differ from the
Canon language guide — especially if the new usage seems more accurate.

### Step 3 — Present candidates one at a time

For each candidate, present:
- The type of change (new fact / contradiction / outdated / language drift)
- The relevant Canon file affected
- What the Canon currently says (exact text)
- What the personal LORE / raw source says
- The proposed replacement or addition (exact text, ready to copy-paste)
- The source (linked raw file or wiki page)

Format:

─────────────────────────────────────────────────
SCRIBE — [date]
[N] potential Canon updates found.

[[X] of [N]] [TYPE] — [CANON FILE]
Source: [[raw file or wiki page]]

Canon currently says:
  "[exact current text]"
  OR: "No existing entry for this."

Proposed [replacement / addition]:
  "[exact proposed text — ready to paste into Canon file]"

Source context:
  [1–2 sentences explaining where this came from and why it matters]

  A — Submit this proposal to the Canon inbox
  B — Edit before submitting (show me a draft to modify)
  C — Don't submit — this is personal context, not Canon material

→
─────────────────────────────────────────────────

Wait for A, B, or C before moving to next candidate.

**For Option B:**
Present the proposed text in an editable format.
Accept the user's edits.
Confirm the edited version before submitting.

### Step 4 — Write proposal files

For each approved proposal (A or confirmed B), write a proposal file:

Path: Canon/proposals/YYYY-MM-DD-[author]-[subject].md

Where [author] is the user's name from ~ Reference/identity.md
and [subject] is a 2–4 word slug describing the change (e.g. acme-contracts, notion-ai-feature)

Frontmatter:
---
proposed_by: [author]
date: YYYY-MM-DD
affects: [canon file path, e.g. customers/acme-corp.md]
status: open
source: "[[raw file or wiki page path]]"
---

Body:
## What changed
[Plain language description — 2–3 sentences]

## Current Canon text
[Exact quote from Canon, or "No existing entry."]

## Proposed Canon text
[Exact replacement or addition text — the Canon owner should be able to
copy-paste this directly into the Canon file]

## Why this matters to the whole team
[One sentence on why this is shared knowledge, not personal context]

## Source
[[link to raw file or wiki page]]

### Step 5 — Update the proposals inbox

After writing all proposal files, update Canon/proposals/inbox.md.

If inbox.md does not exist, create it with this header:
---
type: canon-inbox
---
# Canon Proposals — Inbox

| Date | Author | Affects | Summary | Status |
|------|--------|---------|---------|--------|

Then add a row for each new proposal:
| [date] | [author] | [canon file] | [one sentence summary] | open |

### Step 6 — Clear Compass flags

Remove any [!open] "Potential Canon update" callouts from hot.md that were
addressed in this Scribe run.

### Step 7 — Log

Append to Wiki/log.md:
## [YYYY-MM-DD] scribe | [N] proposals submitted — [brief summary of what was surfaced]

---

## Passive Compass Integration

During every Compass run, Compass will add to its report:
"Canon Candidates from this week's activity: [list]"

When the user runs /scribe after a Compass run, Claude should first check
the most recent compass report for flagged candidates and include them in
the Step 1 scan without re-reading everything from scratch.

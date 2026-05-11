# Compass

## Purpose
Run a weekly drift audit to ensure the wiki's content still faithfully
reflects real source material. Catches knowledge that has drifted from
truth through wiki-to-wiki rewrites, assumption fossilization, and
distance from original sources.

Run alongside /chapter every week. Also available on demand.

## Trigger
/compass

## When to Run
- Weekly, every Monday or Friday alongside /chapter
- Any time the user suspects the wiki may have drifted
- LORE prompts automatically if not run in 8+ days alongside the /chapter prompt

## Inputs
- All wiki pages in Wiki/Network/ and Wiki/Initiatives/
- All [!assumption], [!gap], [!open] callouts across the entire wiki
- Canon/ files if Canon is configured
- Wiki/~System/compass/ for prior reports

---

## Workflow

### Step 1 — Mechanical actions (apply automatically, no user input required)

Scan all wiki pages for:
- Any [!assumption] callout where the callout is older than 60 days
  and has not been resolved
- Any [!gap] callout where the callout is older than 60 days
  and has not been resolved

For each qualifying callout:
- Add [!stale] tag directly after the existing callout inline
- Example: `[!assumption] David leads the BD team` becomes
  `[!assumption][!stale] David leads the BD team`
- Do not modify the surrounding content

Log every auto-applied tag. Present this log to the user before the queue:
"Mechanical actions complete: [N] [!stale] tags applied.
[List each: file name + brief description of what was tagged]"

If N = 0: "No stale callouts found. Moving to interactive review."

### Step 2 — Build the interactive queue

Collect all items meeting the following criteria, in this priority order:

**Priority 1 — Source-distant pages (highest risk)**
Network and Initiatives pages where last_confirmed_by_source is
more than 60 days ago.

**Priority 2 — Deep inference chains**
Any page where inference_generation is 3 or higher.

**Priority 3 — Unresolved assumptions (30+ days)**
Any [!assumption] callout (with or without [!stale]) older than 30 days.

**Priority 4 — High-stakes field drift**
Network and Initiatives pages where status, relationship descriptors,
or decision state fields have changed since last_confirmed_by_source.

If the queue is empty: skip to Step 4.

### Step 3 — Present queue one item at a time

For each item, present:
- The page name and file path
- Last confirmed by source date and the source file linked
- Inference generation number
- The specific claim or field that is at risk
- What the page currently says
- What the original source said (if retrievable from source_ref)

Offer exactly three options:

  A — [Specific confirmation action for this item]
      (e.g. "Atlas IS active. Mark confirmed, update last_confirmed_by_source.")
  B — [Specific correction action for this item]
      (e.g. "Atlas status should be 'considering'. Update page now.")
  C — I'm not sure.
      Create a task card in Wiki/Initiatives/backlog/ to confirm this.
      Flag for next meeting-prep involving relevant people.
      Set a 30-day reminder in log.md.

Wait for the user to type A, B, or C. Execute the chosen action immediately
before moving to the next item.

**For Option A:**
- Update last_confirmed_by_source to today's date in frontmatter
- Note in log: confirmed by user review (not raw source)
- Set inference_generation back to 1 if it was elevated

**For Option B:**
- Apply the specific correction to the page
- Update last_confirmed_by_source to today's date
- Note the correction in the page's history if it has one

**For Option C:**
- Create task card:
  title: "Confirm: [specific claim]"
  linked_page: [[page path]]
  notes: "Flagged by Compass [date]. Unconfirmed for [X] days.
          Last source: [[source_ref]]"
  status: backlog
- Add to log.md: `[YYYY-MM-DD] compass-defer | [[page]] — confirm [claim] needed`
- If the item involves a specific person, add a note to their Network page:
  "[!open] Confirm [claim] in next interaction."

### Step 4 — Canon staleness check

Only if Canon/ folder exists.

Check last_updated frontmatter on each Canon file.
For any file not updated in 90 days, add to report:
"⚠ Canon/[filename] — last updated [X] days ago. Notify Canon owner."

Do not create a queue item for Canon files — this is informational only.
The Canon owner uses /canon-review to manage Canon updates.

### Step 5 — Write the Compass report

Write to: Wiki/~System/compass/YYYY-MM-DD-compass.md

Frontmatter:
---
type: compass-report
date: YYYY-MM-DD
pages_audited: [N]
mechanical_actions: [N]
queue_items: [N]
decisions_made: [N]
deferred: [N]
drift_risk: LOW | MEDIUM | HIGH
---

Drift risk scoring:
- HIGH: any Priority 1 items (source-distant pages) OR any inference_generation 4+
- MEDIUM: Priority 2 or 3 items only
- LOW: only Priority 4 items or queue was empty

Report sections:
1. Mechanical Actions — list all [!stale] tags applied
2. Queue Results — for each item: page, decision made, action taken
3. Deferred Items — items where user chose C, with task card links
4. Still Open from Prior Runs — items deferred in previous reports not yet resolved
5. Canon Staleness — any Canon files flagged
6. Summary — one line: "X pages audited, Y resolved, Z deferred, drift risk: [level]"

### Step 6 — Log

Append to Wiki/log.md:
## [YYYY-MM-DD] compass | [N] items reviewed — drift risk: [LEVEL]

---

## Compass vs. Lint

| | Lint | Compass |
|---|---|---|
| Checks | Structure, orphans, missing frontmatter | Distance from source, inference depth, assumption age |
| Catches | Broken pages | Drifting pages |
| User interaction | None | Interactive 5-minute queue |
| Question | "Is the wiki well-formed?" | "Can I still trust what the wiki says?" |

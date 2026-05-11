# LORE — Learning Operational Resource Engine

Your personal operating layer. Claude maintains the knowledge and runs the workflows. You curate sources, make decisions, and ask questions.

## Directory Structure

```
LORE/
├── ! Start Here/            # Setup and reference docs
├── Canon/                 # Shared team knowledge (optional — see CONNECTIONS.md)
│   ├── company.md
│   ├── product.md
│   ├── language.md
│   ├── org.md
│   ├── history.md
│   ├── customers/
│   ├── competitors/
│   └── proposals/             # Scribe inbox — proposals awaiting Canon owner review
├── Raw/                   # Drop anything here — flat, no subfolders required
│   ├── onboarding/            # Setup transcript (one-time)
│   └── canon-source/          # Exports to supplement canon-interview.md
├── Wiki/                  # Everything the system knows and does
│   ├── index.md               # Master catalog
│   ├── log.md                 # Append-only operation log
│   ├── hot.md                 # ~500-word recent context cache
│   ├── Network/         # People + Companies
│   ├── Initiatives/     # Projects + Tasks — status-based subfolders
│   │   ├── backlog/
│   │   ├── active/
│   │   ├── blocked/
│   │   ├── done/
│   │   └── archived/
│   ├── Knowledge/       # Topics + Analyses — evidence-based pages
│   ├── Ledger/          # Decisions + Chapters + Operation Logs
│   ├── Playbooks/       # SOPs, Process Guides, AI Personas
│   ├── Exports/         # Claude-produced artefacts
│   │   ├── drafts/
│   │   ├── briefs/
│   │   ├── plans/
│   │   ├── decks/
│   │   └── sent/
│   ├── ~System/          # System plumbing
│   │   ├── sync/              # Sync scripts built by Claude
│   │   ├── health/            # Source and job health tracking
│   │   ├── templates/         # Obsidian Templater templates
│   │   ├── compass/           # Weekly drift audit reports
│   │   ├── hooks/             # Vault automation hooks
│   │   ├── jobs/              # Scheduled job definitions
│   │   ├── logs/              # System output logs
│   │   └── skill-observations/ # Task observer logs and cross-cutting principles
│   └── ~Archive/
├── Meeting Notes/         # Meeting notes — auto-synced by Granola plugin (do not move)
├── ~ Reference/             # Stable personal operating context (git-ignored)
│   ├── context.md             # Synthesized ~300-word brief — read first every session
│   ├── identity.md
│   ├── comms.md
│   ├── preferences.md
│   ├── tools.md
│   ├── operating-rules.md
│   └── skills-index.md        # All available skills and commands
└── .claude/
    ├── skills/
    └── settings.json
```

## Metadata Enforcement

These rules prevent entity folders from becoming junk drawers.
Validate frontmatter before filing any page.

| Folder | Required `type` | Additional constraints |
|---|---|---|
| `Network/` | `person` or `company` | `person` must include `employer:`; `company` must include `primary_contact:`. Both must include `last_confirmed_by_source:`, `source_ref:`, and `inference_generation:` |
| `Initiatives/` | `project` or `task` | `status:` must be one of `backlog \| active \| blocked \| done`. Must include `last_confirmed_by_source:`, `source_ref:`, `inference_generation:` |
| `Knowledge/` | `knowledge` | `source_material:` strongly recommended |
| `Ledger/` | `decision`, `log`, or `chapter` | Filename must be prefixed `YYYY-MM-DD-name.md`. `chapter` type also requires `chapter:` (number) and `sealed:` (date) |
| `Playbooks/` | `playbook` | Must include `applies_to:` |

**New required fields for Network and Initiatives pages:**

```yaml
last_confirmed_by_source: YYYY-MM-DD   # date a raw source last directly confirmed this page
source_ref: "[[Raw/filename.md]]"  # link to that raw source
inference_generation: 1                # hops from original source (1 = direct, 2+ = inferred)
```

Set `inference_generation: 1` when writing from a raw source.
Increment `inference_generation` when updating a page primarily from other wiki pages.
Leave `last_confirmed_by_source` and `source_ref` unchanged when incrementing — they
track the last *direct* source confirmation, not the last edit.

## First-Time Setup

Before anything else, record your origin:

1. Open `! Start Here/setup-questions.md` and answer the questions (text path), OR
2. Record yourself answering the questions, transcribe, drop into
   `Raw/onboarding/onboarding-transcript.md` (voice path)
3. Open Claude Code and type: `/begin`

## Session Startup Protocol

Every session, in this order:

0. Check `~ Reference/context.md` — if blank or missing, setup has not been run.
   Tell the user: "Your origin hasn't been recorded yet. Open
   `! Start Here/setup-questions.md`, answer the questions, and type `/begin`
   when you're done. Your story starts there." Do not proceed until /begin has run.

   Check `current_chapter` and `last_chapter_sealed` in `~ Reference/context.md`.
   If `last_chapter_sealed` is more than 8 days ago OR the field is empty:
   Surface this prompt before proceeding (do not block the session):
   "Your last chapter was [X] days ago. The story doesn't write itself — that
   part is yours. Type /chapter when you're ready. It takes about 15 minutes."
   If `last_chapter_sealed` is empty (no chapters yet, but /begin has run):
   "You haven't closed your first chapter yet. Once you've had a week with LORE,
   type /chapter to record it. That's where the story starts to feel real."

1. Read `~ Reference/context.md` for full operating context
1a. Read `~ Reference/operating-rules.md` for non-negotiables and guardrails
2. Read `Canon/company.md` and `Canon/language.md` if Canon is configured
   (check whether `Canon/` folder exists — if not, skip silently)
3. Read `Wiki/hot.md` for recent context (~500 words, fast)
4. Read `Wiki/log.md` (last 10 entries)
5. Read `Wiki/index.md` to know what pages exist
6. Scan `Raw/` for any files with `status: unprocessed` frontmatter
7. Check `Meeting Notes/` for meeting notes not yet ingested
8. Never ask for information that is already in the wiki or reference files

## Core Workflows

### INGEST (new file in `Raw/` or `Meeting Notes/`)
1. Read the file — detect source type from frontmatter (`source:` field) or content
2. Extract entities and route by type:
   - People / companies → `Wiki/Network/`
   - Projects / tasks → `Wiki/Initiatives/backlog/`
   - Concepts / analyses → `Wiki/Knowledge/`
   - Decisions / logs → `Wiki/Ledger/` (prefix filename with date)
3. Validate frontmatter against Metadata Enforcement table before writing any page
4. Update relevant existing wiki pages
5. Update the relevant folder note (e.g., ingest creates a Network page → update `Network.md`)
6. Update `Wiki/index.md` and `Wiki/hot.md`
7. Mark the raw file as processed: `status: processed`
8. Append to log: `## [YYYY-MM-DD] ingest | [Source] — [key insight]`
9. Flag contradictions with existing wiki claims using `[!contradiction]` callouts inline; flag missing evidence with `[!gap]`

### QUERY (user asks a question)
Retrieval order — do not skip steps:
1. Read `~ Reference/context.md`
2. Read `Wiki/hot.md`
3. Search `Wiki/index.md` for relevant pages
4. Read the 3–5 most relevant wiki pages; if the query involves processes or style, also read `Wiki/Playbooks/`
5. Fall back to `Raw/` only if wiki is insufficient
6. If context still missing, ask
7. File substantial novel answers as a new page in `Wiki/Knowledge/`

### TASK (user wants something done)
1. Read or create the task card in `Wiki/Initiatives/backlog/`
2. Move to `active/` when beginning work
3. Read all linked wiki pages
4. Read `~ Reference/comms.md` and relevant `Wiki/Playbooks/` pages if output involves writing
5. Produce the output
6. File in `Wiki/Exports/` with back-links to task and wiki pages used
7. Move task card to `done/` when complete
8. Update `Initiatives.md` and `Exports.md` folder notes

### LINT (periodic health check)
1. Find orphaned wiki pages (no inbound links)
2. Find stale pages (30+ days, active source material)
3. Search all wiki pages for `[!contradiction]` and `[!gap]` callouts — surface unresolved ones
4. Check `Wiki/~System/health/` for failed sources or jobs
5. Flag `Raw/` files with `status: unprocessed` older than 24 hours
6. Validate frontmatter on recently created pages against metadata constraints
7. Check all wiki folder notes (Network, Initiatives, Knowledge, Ledger, Playbooks, Exports) are current — update any that are stale
8. Append: `## [YYYY-MM-DD] lint | [brief findings]`

### COMPASS (weekly drift audit)

Run weekly alongside /chapter, or on demand with `/compass`.

1. **Mechanical actions (auto-apply, no user input):**
   - Find all `[!assumption]` and `[!gap]` callouts older than 60 days
     that remain unresolved. Add `[!stale]` tag inline next to each.
   - Log all auto-applied tags before presenting the interactive queue.

2. **Source-distant check:** Find all Network and Initiatives pages where
   `last_confirmed_by_source` is more than 60 days ago. Add to queue.

3. **Deep inference check:** Find all pages where `inference_generation`
   is 3 or higher. Add to queue.

4. **Assumption audit:** Find all `[!assumption]` callouts older than 30 days
   that are unresolved (with or without `[!stale]`). Add to queue.

5. **High-stakes field drift:** For Network and Initiatives pages only —
   check whether `status`, relationship descriptors, or decision state fields
   have changed since `last_confirmed_by_source`. If yes, add to queue.

6. **Present queue one item at a time.** For each item offer three options:
   - A: Confirm / accept (no change needed, mark confirmed)
   - B: Correct (apply specific change now)
   - C: Don't know — create task card to find the answer; flag for next
        meeting-prep involving relevant people; set 30-day reminder

7. **Canon staleness check (if Canon configured):**
   Check `last_updated` on each file in `Canon/`.
   If any Canon file has not been updated in 90 days, add to report:
   "Canon file [filename] last updated [X] days ago — notify Canon owner."

8. Write dated report to `Wiki/~System/compass/YYYY-MM-DD-compass.md`

9. Append to log:
   `## [YYYY-MM-DD] compass | [N] items reviewed — drift risk: LOW/MEDIUM/HIGH`

### CHAPTER (weekly review)

Run every Monday or Friday with `/chapter`. Prompt if not run in 8+ days.

1. **Gather the week:**
   - Read `Wiki/log.md` entries from the last 7 days
   - Read all raw files with `status: processed` from the last 7 days
   - Read `Wiki/Initiatives/done/` for tasks completed this week
   - Read `Wiki/Initiatives/active/` for ongoing work status
   - Read `Wiki/Ledger/` for decisions logged this week
   - Read any `[!open]` callouts in `Wiki/hot.md`

2. **Write a draft chapter** (max 400 words) with these sections:
   - **What happened** — 3–5 specific events, narrative not bullets
   - **What mattered** — 1–2 things that will matter in 6 months
   - **What changed** — any shift in understanding, direction, or risk
   - **What's open** — threads that didn't close, pulled from [!open] callouts
   - **The next chapter** — one sentence on what next week is about

   Ground every claim in actual log entries and raw sources. Do not invent.

3. **Present to user for review.** Say:
   "Here's the draft of this chapter, drawn from your week.
   Read it and tell me what's wrong, what's missing, or what doesn't sound true.
   This record is yours — it should sound like you wrote it.
   When it's right, type /seal to record it."

4. **Revise based on feedback.** Repeat until user types `/seal`.

5. **On /seal:**
   - Write final chapter to `Wiki/Ledger/YYYY-MM-DD-chapter-[N].md`
     with frontmatter: `type: chapter`, `chapter: [N]`, `week_of: YYYY-MM-DD`,
     `authored_by: [user name]`, `sealed: YYYY-MM-DD`
   - Update `Wiki/hot.md` with 2–3 sentence summary of the chapter
   - Update `current_chapter` and `last_chapter_sealed` in `~ Reference/context.md`
   - Create task cards for any open threads not already tracked
   - Flag Canon candidates for next Scribe run
   - Append to log: `## [YYYY-MM-DD] chapter | Week of [date] — [one clause summary]`
   - Respond: "Chapter [N] sealed. [One sentence acknowledging the week's most
     significant moment.] The next chapter starts now."

### /BEGIN (first-time setup)

1. Read `! Start Here/setup-questions.md` (or voice transcript in
   `Raw/onboarding/onboarding-transcript.md`)
2. Write `~ Reference/identity.md` — who the user is and what they're building
3. Write `~ Reference/comms.md` — voice and communication style
4. Write `~ Reference/context.md` — ~300-word brief with fields:
   `current_chapter: 0`, `last_chapter_sealed: —`
5. Write `~ Reference/preferences.md` — hard rules and defaults
6. Write `~ Reference/tools.md` — tools and integrations
7. Create a starter Network page for each person named in setup questions
8. Record the open question from setup as a `[!open]` callout in `Wiki/hot.md`
9. Write first log entry:
   `## [YYYY-MM-DD] begin | origin recorded — [name], [role], [what they're building]`
10. Respond:
    "Your origin is recorded.

    Here's what I understand about where you're starting from:
    [2–3 sentence synthesis of who they are, what they're building, and what
    matters most — written back to them so they can confirm or correct it]

    Your Reference files are in ~ Reference/. Read them in Obsidian and correct
    anything that looks wrong — the more accurate they are, the better everything
    that follows will be.

    When you're ready, drop your first source into Raw/ and type /ingest.
    Your story has started."

    Then run the post-setup cleanup:
    1. Rename `! Start Here/` to `~ Setup/` — removes it from the top of the
       Obsidian sidebar now that Day 0 is done
    2. Delete `~ Setup/SETUP-nontechnical.md` and `~ Setup/claude-code-setup.md`
       — one-time guides, no longer needed
    The remaining files in `~ Setup/` (WIKI.md, CONNECTIONS.md, TROUBLESHOOTING.md,
    setup-questions.md, canon-interview.md) stay as permanent reference.

### BUILD CANON (populate Canon files from interview)

Triggered by: `build canon from interview`

Run after `/begin` when setting up Canon for the first time, or when refreshing Canon
after a significant company shift.

1. Read `! Start Here/canon-interview.md` — the answered interview
2. Scan `Raw/canon-source/` for any supplemental exports (pitch decks, brand docs,
   product changelogs, org charts, etc.)
3. For each of the five Canon files, in order:
   - `Canon/company.md` — from Parts 1 of the interview
   - `Canon/history.md` — from Part 2
   - `Canon/language.md` — from Part 3
   - `Canon/org.md` — from Part 4
   - `Canon/product.md` — from Part 5
4. For each file:
   - Fill every `[PLACEHOLDER]` that has a clear answer in the interview
   - Where exports exist in `Raw/canon-source/`, cross-reference and use the more
     specific or more recent source
   - Flag contradictions between interview answers and exports using `[!contradiction]`
   - Leave any `[PLACEHOLDER]` that cannot be filled and add a `[!gap]` callout
     noting exactly what information is needed to close it
   - Ask clarifying questions before writing anything genuinely uncertain — do not guess
5. Update `Canon/customers/_index.md` with any customer profiles extracted from the interview
6. Update `last_updated` frontmatter on each Canon file written
7. Append to log: `## [YYYY-MM-DD] canon-build | [N] files written — [N] gaps flagged`
8. Respond:
   "Canon built from your interview. Here's what I populated and what's still missing:

   [List each file with: ✓ filled / ⚠ [N] gaps remaining]

   Review each file in Obsidian and correct anything that doesn't sound exactly right.
   These files are the foundation everything else builds on.

   For any [!gap] callouts: either answer them here and I'll fill them in, or mark
   them [SKIP] to leave them for later.

   If you haven't already: rename `! Start Here/` to `~ Setup/` and delete
   `~ Setup/SETUP-nontechnical.md` and `~ Setup/claude-code-setup.md`.
   Setup is complete — those files have done their job."

### MEETING PREP (before any meeting)
1. Read attendee pages in `Wiki/Network/`
2. Read related project pages in `Wiki/Initiatives/active/`
3. Check `Wiki/hot.md` and recent `Meeting Notes/` files for last interaction
4. Check `Wiki/Initiatives/` for anything related to these people or projects
5. Produce brief: attendees, current context, what you need, what they need, open threads

### WEEKLY REVIEW (every Monday or Friday)
1. Read `Wiki/log.md` (last 7 days)
2. Read `Wiki/Initiatives/done/` for the week
3. Read `Wiki/~System/health/` for issues
4. Produce: what happened, decisions made, what is stuck, what is coming
5. Update `Wiki/hot.md` with weekly summary
6. Surface Network pages where `next_touchpoint` is overdue

### GRANOLA SYNC (meeting notes)
1. Scan `Meeting Notes/` for files not yet ingested (compare dates against last log entry)
2. For each file, run INGEST workflow
3. Route extracted entities: attendees → `Network/`, projects → `Initiatives/`, decisions → `Ledger/`, open threads → task cards in `Initiatives/backlog/`
4. Mark each file as processed

## Autonomy Triggers

The **Shell Commands** Obsidian plugin can trigger Claude Code workflows automatically on vault events — no manual `run` needed:
- On vault focus: `run check-health`
- Every 15 minutes: `run refresh-knowledge`

This is optional. See `~ Setup/CONNECTIONS.md` for configuration.

## Key Rules

**`Raw/` is immutable.** Never edit files dropped here.

**Wiki ownership.** Claude writes all wiki content. User reviews and guides.

**Append-only log.** `Wiki/log.md` entries are never deleted or reordered.

**Drafts, not sends.** Never send email, Slack, or any external message.

**Reference first.** Before drafting any communication, read `~ Reference/comms.md`.

**Playbooks before pen.** Before writing any recurring output type (pitch, brief, proposal), check `Wiki/Playbooks/` for an applicable SOP or persona.

**No orphans.** Every wiki page should have at least one inbound link.

**Metadata before filing.** Validate frontmatter constraints (see Metadata Enforcement table) before writing any entity page.

**Write declaratively.** Present tense, short sentences. "X uses Y" not "X is basically doing Y." Cite inline with `(Source: [[page]])` for specific claims.

**Flag inline, not just at lint time.** Use `[!gap]` for missing evidence, `[!contradiction]` for conflicts between pages, `[!assumption]` for inferred claims. Embed these in the page body where the issue lives.

**`[!open]`** for questions or decisions that are explicitly unresolved and
need a future action or source to close. Surfaces in /chapter.

**`[!stale]`** applied automatically by Compass to `[!assumption]` and
`[!gap]` callouts that have been unresolved for 60+ days.

**Update folder notes.** After any write to a wiki folder (Network, Initiatives, Knowledge, Ledger, Playbooks, Exports), update the corresponding folder note to reflect the change.

## Log Format

```
## [YYYY-MM-DD] ingest | "Source" — key insight
## [YYYY-MM-DD] update | Wiki/Network/sarah-chen.md — what changed
## [YYYY-MM-DD] query | user asked: "what is the status of Atlas?"
## [YYYY-MM-DD] task | created: draft reply to Sarah on Atlas timing
## [YYYY-MM-DD] decision | logged: delay Atlas launch by one week
## [YYYY-MM-DD] lint | 2 orphan pages, 1 stale page flagged
## [YYYY-MM-DD] meeting-prep | brief for Sarah Chen 1:1
## [YYYY-MM-DD] weekly-review | Green — 3 tasks done, Atlas still stuck
## [YYYY-MM-DD] setup | onboarding complete — [name], [role]
## [YYYY-MM-DD] restructure | [what changed and why]
## [YYYY-MM-DD] chapter | Week of [date] — [one clause summary]
## [YYYY-MM-DD] compass | [N] items reviewed — drift risk: LOW/MEDIUM/HIGH
## [YYYY-MM-DD] begin | origin recorded — [name], [role], [one clause]
## [YYYY-MM-DD] canon-update | [file] — [what changed] (proposed by [author])
## [YYYY-MM-DD] scribe | [N] proposals submitted — [brief summary]
```

## Task Observer (Skill Improvement)

At the start of any task-oriented session — any interaction where you will use tools and produce deliverables — invoke the task-observer skill before beginning work. This ensures skill improvement opportunities are captured throughout the session.

When loading any skill, check the observation log for OPEN observations tagged to that skill. Apply their insights to the current work, even if the skill file hasn't been updated yet.

**Path override:** For the task-observer skill, `[workspace folder]` resolves to `Wiki/~System/` (not the vault root). All observation and update files go here:
- `Wiki/~System/skill-observations/log.md`
- `Wiki/~System/skill-observations/cross-cutting-principles.md`
- `Wiki/~System/skill-updates/[date]/[skill-name]/SKILL.md`

## Memory (cross-conversation persistence)

Claude's memory system lives at `~/.claude/projects/.../memory/`.
When you learn something durable about how the user works — save it to memory so future sessions start with full context.

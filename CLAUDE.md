# SBOS — Second Brain Operating System

Your personal operating layer. Claude maintains the knowledge and runs the workflows. You curate sources, make decisions, and ask questions.

## Directory Structure

```
SBOS/
├── 2 | Granola/                # Meeting notes — auto-synced by Granola plugin (do not move)
├── ! | Start Here/            # Setup and reference docs
├── 0 | Raw/                    # Drop anything here — flat, no subfolders required
│   └── onboarding/             # Setup transcript (one-time)
├── 1 | Wiki/                   # Everything the system knows and does
│   ├── index.md                # Master catalog
│   ├── log.md                  # Append-only operation log
│   ├── hot.md                  # ~500-word recent context cache
│   ├── 1.1 | Network/          # People + Companies
│   ├── 1.2 | Initiatives/      # Projects + Tasks — status-based subfolders
│   │   ├── backlog/
│   │   ├── active/
│   │   ├── blocked/
│   │   ├── done/
│   │   └── archived/
│   ├── 1.3 | Knowledge/        # Topics + Analyses — evidence-based pages
│   ├── 1.4 | Ledger/           # Decisions + Operation Logs
│   ├── 1.5 | Playbooks/        # SOPs, Process Guides, AI Personas
│   ├── 1.6 | Exports/          # Claude-produced artefacts
│   │   ├── drafts/
│   │   ├── briefs/
│   │   ├── plans/
│   │   ├── decks/
│   │   └── sent/
│   ├── 1.7 | System/           # System plumbing
│   │   ├── sync/
│   │   ├── jobs/
│   │   ├── hooks/
│   │   ├── logs/
│   │   ├── health/
│   │   └── templates/          # Obsidian Templater templates
│   └── 1.8 | Archive/
├── 9 | Reference/              # Stable personal operating context (git-ignored)
│   ├── context.md              # Synthesized ~300-word brief — read first every session
│   ├── identity.md
│   ├── comms.md
│   ├── preferences.md
│   ├── tools.md
│   └── operating-rules.md
└── .claude/
    ├── skills/
    └── settings.json
```

## Metadata Enforcement

These rules prevent entity folders from becoming junk drawers. Validate frontmatter before filing any page.

| Folder | Required `type` | Additional constraints |
|--------|----------------|----------------------|
| `1.1 \| Network/` | `person` or `company` | `person` must include `employer:`; `company` must include `primary_contact:` |
| `1.2 \| Initiatives/` | `project` or `task` | `status:` must be one of `backlog \| active \| blocked \| done` |
| `1.3 \| Knowledge/` | `knowledge` | `source_material:` strongly recommended — link to source files in `0 \| Raw/` where available |
| `1.4 \| Ledger/` | `decision` or `log` | Filename must be prefixed: `YYYY-MM-DD-name.md` |
| `1.5 \| Playbooks/` | `playbook` | Must include `applies_to:` listing roles or contexts |

## First-Time Setup

Before anything else, run the onboarding interview:
1. Open `! | Start Here/setup-questions.md` and answer the questions (text path), OR
2. Record yourself answering the questions, transcribe, drop into `0 | Raw/onboarding/onboarding-transcript.md` (voice path)
3. Open Claude Code and type: `/setup`

## Session Startup Protocol

Every session:
1. Check `9 | Reference/context.md` — if it is blank or missing, setup has not been run. Stop and tell the user: "Your Reference files are empty. Complete `! | Start Here/setup-questions.md` (or drop a voice transcript in `0 | Raw/onboarding/`) then type `/setup` to initialize the system." Do not proceed with the remaining steps until setup is complete.
2. Read `9 | Reference/context.md` for full operating context
3. Read `1 | Wiki/hot.md` for recent context (~500 words, fast)
4. Read `1 | Wiki/log.md` (last 10 entries)
5. Read `1 | Wiki/index.md` to know what pages exist
6. Scan `0 | Raw/` for any files with `status: unprocessed` frontmatter
7. Check `2 | Granola/` for meeting notes not yet ingested
8. Never ask for information that is already in the wiki or reference files

## Core Workflows

### INGEST (new file in `0 | Raw/` or `2 | Granola/`)
1. Read the file — detect source type from frontmatter (`source:` field) or content
2. Extract entities and route by type:
   - People / companies → `1 | Wiki/1.1 | Network/`
   - Projects / tasks → `1 | Wiki/1.2 | Initiatives/backlog/`
   - Concepts / analyses → `1 | Wiki/1.3 | Knowledge/`
   - Decisions / logs → `1 | Wiki/1.4 | Ledger/` (prefix filename with date)
3. Validate frontmatter against Metadata Enforcement table before writing any page
4. Update relevant existing wiki pages
5. Update the relevant folder note (e.g., ingest creates a Network page → update `1.1 | Network.md`)
6. Update `1 | Wiki/index.md` and `1 | Wiki/hot.md`
7. Mark the raw file as processed: `status: processed`
8. Append to log: `## [YYYY-MM-DD] ingest | [Source] — [key insight]`
9. Flag contradictions with existing wiki claims using `[!contradiction]` callouts inline; flag missing evidence with `[!gap]`

### QUERY (user asks a question)
Retrieval order — do not skip steps:
1. Read `9 | Reference/context.md`
2. Read `1 | Wiki/hot.md`
3. Search `1 | Wiki/index.md` for relevant pages
4. Read the 3–5 most relevant wiki pages; if the query involves processes or style, also read `1 | Wiki/1.5 | Playbooks/`
5. Fall back to `0 | Raw/` only if wiki is insufficient
6. If context still missing, ask
7. File substantial novel answers as a new page in `1 | Wiki/1.3 | Knowledge/`

### TASK (user wants something done)
1. Read or create the task card in `1 | Wiki/1.2 | Initiatives/backlog/`
2. Move to `active/` when beginning work
3. Read all linked wiki pages
4. Read `9 | Reference/comms.md` and relevant `1 | Wiki/1.5 | Playbooks/` pages if output involves writing
5. Produce the output
6. File in `1 | Wiki/1.6 | Exports/` with back-links to task and wiki pages used
7. Move task card to `done/` when complete
8. Update `1.2 | Initiatives.md` and `1.6 | Exports.md` folder notes

### LINT (periodic health check)
1. Find orphaned wiki pages (no inbound links)
2. Find stale pages (30+ days, active source material)
3. Search all wiki pages for `[!contradiction]` and `[!gap]` callouts — surface unresolved ones
4. Check `1 | Wiki/1.7 | System/health/` for failed sources or jobs
5. Flag `0 | Raw/` files with `status: unprocessed` older than 24 hours
6. Validate frontmatter on recently created pages against metadata constraints
7. Check all folder notes (1.1–1.6) are current — update any that are stale
8. Append: `## [YYYY-MM-DD] lint | [brief findings]`

### MEETING PREP (before any meeting)
1. Read attendee pages in `1 | Wiki/1.1 | Network/`
2. Read related project pages in `1 | Wiki/1.2 | Initiatives/active/`
3. Check `1 | Wiki/hot.md` and recent `2 | Granola/` files for last interaction
4. Check `1 | Wiki/1.2 | Initiatives/` for anything related to these people or projects
5. Produce brief: attendees, current context, what you need, what they need, open threads

### WEEKLY REVIEW (every Monday or Friday)
1. Read `1 | Wiki/log.md` (last 7 days)
2. Read `1 | Wiki/1.2 | Initiatives/done/` for the week
3. Read `1 | Wiki/1.7 | System/health/` for issues
4. Produce: what happened, decisions made, what is stuck, what is coming
5. Update `1 | Wiki/hot.md` with weekly summary
6. Surface Network pages where `next_touchpoint` is overdue

### GRANOLA SYNC (meeting notes)
1. Scan `2 | Granola/` for files not yet ingested (compare dates against last log entry)
2. For each file, run INGEST workflow
3. Route extracted entities: attendees → `1.1 | Network/`, projects → `1.2 | Initiatives/`, decisions → `1.4 | Ledger/`, open threads → task cards in `1.2 | Initiatives/backlog/`
4. Mark each file as processed

## Autonomy Triggers

The **Shell Commands** Obsidian plugin can trigger Claude Code workflows automatically on vault events — no manual `run` needed:
- On vault focus: `run check-health`
- Every 15 minutes: `run refresh-knowledge`

This is optional. See `! | Start Here/CONNECTIONS.md` for configuration.

## Key Rules

**`0 | Raw/` is immutable.** Never edit files dropped here.

**Wiki ownership.** Claude writes all wiki content. User reviews and guides.

**Append-only log.** `1 | Wiki/log.md` entries are never deleted or reordered.

**Drafts, not sends.** Never send email, Slack, or any external message.

**Reference first.** Before drafting any communication, read `9 | Reference/comms.md`.

**Playbooks before pen.** Before writing any recurring output type (pitch, brief, proposal), check `1 | Wiki/1.5 | Playbooks/` for an applicable SOP or persona.

**No orphans.** Every wiki page should have at least one inbound link.

**Metadata before filing.** Validate frontmatter constraints (see Metadata Enforcement table) before writing any entity page.

**Write declaratively.** Present tense, short sentences. "X uses Y" not "X is basically doing Y." Cite inline with `(Source: [[page]])` for specific claims.

**Flag inline, not just at lint time.** Use `[!gap]` for missing evidence, `[!contradiction]` for conflicts between pages, `[!assumption]` for inferred claims. Embed these in the page body where the issue lives.

**Update folder notes.** After any write to a 1.1–1.6 folder, update the corresponding folder note to reflect the change.

## Log Format

```
## [YYYY-MM-DD] ingest | "Source" — key insight
## [YYYY-MM-DD] update | 1 | Wiki/1.1 | Network/sarah-chen.md — what changed
## [YYYY-MM-DD] query | user asked: "what is the status of Atlas?"
## [YYYY-MM-DD] task | created: draft reply to Sarah on Atlas timing
## [YYYY-MM-DD] lint | 2 orphan pages, 1 stale page flagged
## [YYYY-MM-DD] meeting-prep | brief for Sarah Chen 1:1
## [YYYY-MM-DD] weekly-review | Green — 3 tasks done, Atlas still stuck
## [YYYY-MM-DD] setup | onboarding complete — [name], [role]
## [YYYY-MM-DD] restructure | [what changed and why]
```

## Task Observer (Skill Improvement)

At the start of any task-oriented session — any interaction where you will use tools and produce deliverables — invoke the task-observer skill before beginning work. This ensures skill improvement opportunities are captured throughout the session.

When loading any skill, check the observation log for OPEN observations tagged to that skill. Apply their insights to the current work, even if the skill file hasn't been updated yet.

**Path override:** For the task-observer skill, `[workspace folder]` resolves to `1 | Wiki/1.7 | System/` (not the vault root). All observation and update files go here:
- `1 | Wiki/1.7 | System/skill-observations/log.md`
- `1 | Wiki/1.7 | System/skill-observations/cross-cutting-principles.md`
- `1 | Wiki/1.7 | System/skill-updates/[date]/[skill-name]/SKILL.md`

## Memory (cross-conversation persistence)

Claude's memory system lives at `~/.claude/projects/.../memory/`.
When you learn something durable about how the user works — save it to memory so future sessions start with full context.

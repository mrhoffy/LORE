# ! Start Here/WIKI.md — Knowledge Schema

This document defines the schema for all wiki pages in LORE. Read this when creating or updating pages.

---

## Core Principle

The wiki is not a pile of notes. It is your personal Wikipedia — structured, cross-referenced, and maintained by Claude. Every page should be human-readable, linked, dated, and easy for Claude to inspect programmatically.

---

## Folder Map

| Folder | What lives here | Types |
|--------|----------------|-------|
| `Wiki/Network/` | People and companies you interact with | `person`, `company` |
| `Wiki/Initiatives/` | Projects and tasks, organized by status | `project`, `task` |
| `Wiki/Knowledge/` | Concepts, frameworks, domain knowledge | `knowledge` |
| `Wiki/Ledger/` | Decisions, chapters, and operation logs | `decision`, `log`, `chapter` |
| `Wiki/Playbooks/` | SOPs, process guides, AI personas | `playbook` |
| `Wiki/Exports/` | Claude-produced output artefacts | `output` |
| `Wiki/~System/` | Sync scripts, health files, logs | — |
| `Wiki/~Archive/` | Inactive pages kept for reference | — |

---

## Page Types

### Person Page
**Location:** `Wiki/Network/[firstname-lastname].md`
**Use for:** Anyone you interact with professionally — colleagues, customers, investors, advisors, vendors.

Required frontmatter:
```yaml
type: person
name: Full Name
role: Title at Company
employer: company-slug
relationship: internal | customer | investor | advisor | partner | vendor
last_contact: YYYY-MM-DD
next_touchpoint: YYYY-MM-DD
status: active | inactive | archived
sources: []
related: []
```

### Company Page
**Location:** `Wiki/Network/[company-name].md`
**Use for:** Any company you work with, compete with, invest in, or sell to.

Required frontmatter:
```yaml
type: company
name: Company Name
relationship: customer | investor | portfolio | partner | vendor | competitor
stage:
website:
primary_contact: person-slug
last_interaction: YYYY-MM-DD
sources: []
related: []
```

### Project Page
**Location:** `Wiki/Initiatives/[status]/[project-name].md`
**Use for:** Any initiative, deal, product, or effort with a defined goal and stakeholders.

Required frontmatter:
```yaml
type: project
name: Project Name
status: backlog | active | blocked | done
owner: Name
stakeholders: []
last_updated: YYYY-MM-DD
sources: []
related: []
```

### Task Card
**Location:** `Wiki/Initiatives/[status]/[task-title].md`
**Use for:** Discrete actions that need to be tracked or handed off to Claude.

Required frontmatter:
```yaml
type: task
title: Task Title
status: backlog | active | blocked | done
priority: low | medium | high | urgent
due: YYYY-MM-DD
wiki: []
output: null
```

### Knowledge Page
**Location:** `Wiki/Knowledge/[topic-name].md`
**Use for:** Concepts, frameworks, domain knowledge, and synthetic analyses. Replaces the old Topics and Analyses folders.

Required frontmatter:
```yaml
type: knowledge
name: Topic Name
source_material: []
tags: []
related: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
```

`source_material` is strongly recommended — link to files in `Raw/` where available. Can be left empty for knowledge captured from memory or experience.

### Decision / Log Page
**Location:** `Wiki/Ledger/YYYY-MM-DD-decision-name.md`
**Use for:** Any consequential decision — strategy, hiring, pricing, product, partnerships. Also operation logs.

Required frontmatter:
```yaml
type: decision | log
title: Decision Title
status: made | pending | revisited | superseded
date: YYYY-MM-DD
made_by: Name
stakeholders: []
sources: []
```

Filename must be date-prefixed for chronological sorting.

### Playbook Page
**Location:** `Wiki/Playbooks/[playbook-name].md`
**Use for:** SOPs, recurring process guides, AI personas. Claude reads these before producing recurring output types.

Required frontmatter:
```yaml
type: playbook
name: Playbook Name
applies_to: []
tags: []
related: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
```

---

## Frontmatter Rules

- All pages require `type`, `created`, `updated`, and `related` fields
- `sources` should list paths to raw source files in `Raw/`, not URLs
- `related` should use wiki page filenames for linking
- `status` tells Claude whether a page is actively maintained

---

## Status Vocabulary

| Status | Meaning |
|--------|---------|
| `seed` | Just created, minimal content |
| `developing` | Being actively built |
| `mature` | Stable, well-referenced |
| `evergreen` | Core page, updated continuously |
| `archived` | No longer active, kept for reference |

**Decision-specific statuses:** `made` · `pending` · `revisited` · `superseded` (replaced by a newer decision — link to the superseding page in the body)

---

## Tag Taxonomy

Use hierarchical tags in the `tags:` frontmatter field for filtering and graph views.

| Namespace | Purpose | Examples |
|-----------|---------|---------|
| `#type/` | What kind of page | `#type/person`, `#type/company`, `#type/decision` |
| `#domain/` | Business area | `#domain/sales`, `#domain/product`, `#domain/finance`, `#domain/ops` |
| `#status/` | Current state | `#status/active`, `#status/blocked`, `#status/superseded` |

Keep tags lowercase and consistent. Add new namespaces only when an existing one doesn't fit.

---

## Writing Conventions

### Style
- **Declarative, present tense.** "X uses Y" not "X is basically doing Y" or "X used to do Y."
- **Short sentences.** State the fact, then the implication if needed.
- **Cite inline.** For specific claims in body text: `(Source: [[source-slug]])`. The `sources:` frontmatter field tracks all source files; inline citations point to the specific claim.
- **Link every mention.** Every reference to a person, company, project, or decision that has a wiki page gets a markdown link. No exceptions.

### Callouts
Use Obsidian callouts to flag uncertainty and conflicts directly in page bodies. LINT scans for these and surfaces them in the health report.

```markdown
> [!gap] What is missing or unverified — be specific about what evidence would close this.

> [!contradiction] [[Page A]] says X, but [[Page B]] says Y. Needs resolution.

> [!assumption] This claim is inferred, not confirmed from source material.
```

### Cross-referencing
When updating Page A to reference Page B, check whether Page B should link back. Bidirectional links make graph view and Bases queries useful. Aim for every page to have at least one inbound link — orphans are a lint failure.

---

## Folder Notes

Each wiki folder (Network, Initiatives, Knowledge, Ledger, Playbooks, Exports) has a folder note that Claude maintains as a living dashboard. These are files named after their parent folder, living inside it (e.g., `Network/Network.md`).

Claude updates the relevant folder note after every INGEST, TASK, or significant update in that folder. The folder note is the first thing a user sees when clicking into a folder in Obsidian.

---

## Cross-Referencing

Every page should link to related pages using markdown links: `[Sarah Chen](../Network/sarah-chen.md)`

When you mention a person, project, or company that has a wiki page, always link it. When updating one page to mention another, check whether the referenced page should link back.

---

## System Files

`Wiki/hot.md` — ~500-word rolling summary of recent context. Claude reads this first every session. Update after every significant ingest or session.

`Wiki/index.md` — master catalog of all wiki pages, organized by folder. Update whenever pages are created or removed.

---

## Naming Conventions

- Person pages: `firstname-lastname.md` (lowercase, hyphenated)
- Company pages: `company-name.md` (lowercase, hyphenated)
- Project / task pages: `project-name.md` or `task-title.md` (lowercase, hyphenated)
- Decision pages: `YYYY-MM-DD-decision-title.md` (date prefix, lowercase, hyphenated)
- Knowledge pages: `topic-name.md` (lowercase, hyphenated)
- Playbook pages: `playbook-name.md` (lowercase, hyphenated)

---

## Log Format

Every write operation appends to `Wiki/log.md`:

```
## [YYYY-MM-DD] ingest | Source Title — key insight in one line
## [YYYY-MM-DD] update | Wiki/Network/sarah-chen.md — what changed and why
## [YYYY-MM-DD] query | user asked: "what is the status of Atlas?"
## [YYYY-MM-DD] task | created: draft reply to Sarah on Atlas timing
## [YYYY-MM-DD] decision | logged: delay Atlas launch by one week
## [YYYY-MM-DD] lint | 2 orphan pages, 1 stale person page
## [YYYY-MM-DD] meeting-prep | prepared brief for Sarah Chen 1:1
## [YYYY-MM-DD] weekly-review | Green — 3 tasks done, Atlas still stuck
```

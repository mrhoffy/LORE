# LORE
### Learning Operational Resource Engine

A personal AI OS that builds your working knowledge over time.
Claude maintains your knowledge base, runs your workflows, and drafts your
outputs. You curate sources, make decisions, and ask questions.

The longer you use it, the more it knows. The more it knows, the better it works.

Built for founders, operators, and anyone building something that matters. LORE puts you at the center of your hero's journey, and acts as a companion as you write the chapters. 


Conceptualized by Andrej Karpathy's LLMWIKI, and inspired by many others, I take no credit for these ideas and only hope that sharing them helps you in your craft.


---

## What This Is

LORE is a local folder of plain markdown files, a set of Claude Code skills,
and a CLAUDE.md that tells Claude how to operate the system.

Everything starts in `Raw/` — meeting transcripts, emails, notes, anything
you drop in. Claude ingests each file and writes it into the wiki as structured
knowledge: people, projects, decisions, context.

That wiki becomes the memory Claude works from. Every task, draft, or brief
Claude produces draws on everything the system has learned. The more you feed
in, the better the output.

Finished work lives in Exports — ready to share, send, or hand off.

The system compounds because every ingest makes the wiki richer, and a richer
wiki makes every future task smarter. After a week: a foundation. After a month:
a pattern. After a year: the story of how you got here.

---

## Before You Start

> **New to terminals or developer tools?**
> Read this first: [Non-Technical Setup Guide](! Start Here/SETUP-nontechnical.md)
> It covers everything below in plain language with step-by-step instructions.

---

## Prerequisites

Set these up in order before doing anything else.

| Tool | What it is | Difficulty | Time | Link |
|------|-----------|------------|------|------|
| **Obsidian** | The app where your notes live. Free. | Easy | 2 min | [obsidian.md](https://obsidian.md) |
| **Claude Code** | The AI engine that runs LORE. Usage-based billing. | Medium | 10–15 min | [Setup guide](! Start Here/claude-code-setup.md) |
| **Python 3.9+** | Only needed for Gmail/Slack sync. Skip for now. | Medium | 5 min | [python.org](https://www.python.org/downloads/) |

> **Can I skip Python?** Yes. The core system — meetings, wiki, tasks, drafts —
> works without it. You only need Python when you're ready to connect Gmail or
> Slack. Start without it and add it later.

---

## Setup

### Option 1 — Download (recommended for most people)

1. Click the green **Code** button at the top of this page
2. Click **Download ZIP**
3. Unzip the file — Mac: double-click. Windows: right-click → Extract All
4. Move the `LORE` folder to your Documents folder
5. Open Obsidian → **Open folder as vault** → select the LORE folder
6. Continue to First Week below

### Option 2 — Clone (recommended if you're comfortable with a terminal)

```bash
git clone https://github.com/mrhoffy/LORE.git ~/Documents/LORE
cd ~/Documents/LORE
claude
```

Open Obsidian → Open folder as vault → select the LORE folder.

### Option 3 — Add to an existing vault

Copy these into your existing vault root:

```
CLAUDE.md
! Start Here/
.claude/
Wiki/~System/templates/
~ Reference/   (template files only)
```

### Option 4 — Start from scratch

Paste the contents of `CLAUDE.md` into a new Claude Code session in an empty
folder. Tell Claude what you do for a living. Let it ask questions and scaffold
from there.

---

## Opening LORE in Obsidian

When you open Obsidian for the first time, you'll see a vault picker.

1. Click **"Open folder as vault"**
2. Navigate to your LORE folder
3. Click Open

The `! Start Here` folder will be at the top of the left sidebar — open it first.

> **What is a vault?** In Obsidian, a "vault" is just a folder of text files.
> LORE is your vault. Obsidian is the window you use to read and navigate it.

---

## First Week

**Day 0 — Setup (one time only, ~30–60 minutes)**
- [ ] Install Obsidian
- [ ] Install Claude Code ([claude-code-setup.md](! Start Here/claude-code-setup.md))
- [ ] Download LORE and open as an Obsidian vault
- [ ] Complete `! Start Here/setup-questions.md`
- [ ] Run `/begin` in Claude Code
- [ ] Review your generated Reference files in Obsidian
- [ ] Rename `! Start Here/` to `~ Setup/` in Obsidian (right-click → Rename)
- [ ] Delete `~ Setup/SETUP-nontechnical.md` and `~ Setup/claude-code-setup.md`

Once Day 0 is done, you never do it again. Everything from here is using the system.

**Day 1 — Your origin**
Complete `! Start Here/setup-questions.md`. Type `/begin` in Claude Code.
Review the Reference files Claude wrote. Correct anything that looks wrong —
the accuracy of these files determines the quality of everything that follows.

**Day 2 — Your first source**
Connect your first source. See the guide below.

**Day 3 — Your first wiki**
Review the pages Claude created from your source material. Fix anything that
looks wrong. This calibration matters — you're teaching LORE what's true.

**Day 4 — Your first task**
Create your first task card from real work. Something that needs a draft,
a brief, or a plan.

**Day 5 — Your first handoff**
Run `handoff-task` on your task card. Review the output. Give feedback
with `review-output`.

**Day 6 — Close your first chapter**
Run `/chapter`. Read the draft Claude produces from your week. Correct it
until it sounds true. Type `/seal` to record it.

**Day 7 — Health check**
Run `check-health` to confirm sources and jobs are working.

After a week: a foundation. After a month: something you'd miss.
After a year: the story of how you got here.

---

## Your First Source

**For meeting transcripts:**

| Tool | Platform | Cost | Notes |
|------|----------|------|-------|
| [Granola](https://granola.so) | Mac only | Freemium | Easiest — auto-syncs transcripts to LORE |
| [Fireflies](https://fireflies.ai) | Any | Freemium | Export transcripts and drop into `Raw/` |
| Manual | Any | Free | Paste or type notes directly into `Raw/` |

> **No meeting tool yet?** Start manually. Drop any document, email thread,
> or notes file into `Raw/` and run `refresh-knowledge`. LORE doesn't care
> how the raw content arrived — it just needs something to work with.

**For Gmail, Gcal, or Slack:**
Open Claude Code and type: `implement gmail sync`
Claude will ask questions and write the sync script for you.
See `! Start Here/CONNECTIONS.md` for details.

---

## Skills

**Core workflows:**

| Skill | When to use |
|---|---|
| `/begin` | First-time setup, or after a major role change |
| `meeting-prep` | Before any meeting or call |
| `/chapter` | Every Monday or Friday — close the week, record what mattered |
| `refresh-knowledge` | After new raw files arrive |
| `create-task-card` | When something needs action |
| `handoff-task` | When a task is ready for Claude |
| `review-output` | After reviewing Claude's output |
| `write-draft` | Any written communication |
| `researcher` | Questions about your knowledge base |
| `sync-source` | Adding a new data source |
| `check-health` | System health check |
| `/compass` | Weekly drift audit — keeps the wiki honest |

**Utility skills:**

`avoid-ai-writing` · `content-research-writer` · `internal-comms` · `naming` ·
`meeting-insights-analyzer` · `csv-data-summarizer` · `defuddle` ·
`firecrawl-search` · `factory-floor` · `product-manager-skills` ·
`obsidian-markdown` · `obsidian-bases` · `json-canvas` · `file-organizer`

Full descriptions: `~ Reference/skills-index.md`

---

## For Teams

If you're setting up LORE across a team, each person runs their own vault.
A shared **Canon** folder gives everyone a common foundation — company background,
customer profiles, product knowledge, and language guide — without merging
personal workstreams.

**Building Canon:**

1. Open `! Start Here/canon-interview.md` and answer the questions — 45–90 minutes
   for a thorough pass. Covers company, history, language, org structure, and product.
2. Optionally drop supporting exports (pitch decks, brand docs, customer reviews,
   product changelogs) into `Raw/canon-source/`
3. Type `build canon from interview` in Claude Code
4. Review each populated Canon file in Obsidian and correct anything that doesn't
   sound exactly right

Once Canon is built, share the populated `Canon/` folder with every team member's vault.
Claude reads it automatically before drafting any external communication.

---

## Key Rules

- **`Raw/` is immutable** — Claude reads files here, never modifies them
- **Drafts, not sends** — Claude never sends email, Slack, or any external message
- **Reference first** — Claude reads `comms.md` before writing anything in your voice
- **Canon before drafting** — Claude reads `Canon/language.md` before any
  external communication (if Canon is configured)
- **You seal the record** — Claude drafts the chapter. You correct it. You seal it.
  The story is always yours.

---

## Credits

- Andrej Karpathy: LLM Wiki — the concept, page-shape idea and readable knowledge emphasis
- Noah Brier: AI & I podcast with Dan Shipper — Obsidian + Claude Code workflow
- Daniel Agrici: [claude-obsidian](https://github.com/AgriciDaniel/claude-obsidian) — vault architecture and skill patterns
- Claude Code — the tool that makes this practical
- Refound: Lenny's Skills

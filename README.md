# SBOS — Second Brain Operating System

A personal operating layer for business operators. Claude maintains your knowledge base, runs your workflows, and drafts your outputs. You curate sources, make decisions, and ask questions.

Inspired by Andrej Karpathy's LLM Wiki, with inspiration from several others. I take no credit for these ideas and only hope that by sharing them they help you in your craft. 

My Ideal Customer Persona is a "Startup-er" / Business Operator but through a little conversation with our ai-friends, you can adapt this system to whatever your role 

---

## What This Is

SBOS is a local folder of plain markdown files, a set of Claude Code skills, and a CLAUDE.md that tells Claude how to operate the system.

Four loops keep it running:

1. **Sources** bring in raw context — meetings, email, Slack, calendar
2. **Knowledge** turns raw context into reusable memory — people, projects, decisions
3. **Tasks** turn context into action — drafts, briefs, plans, replies
4. **Outputs** create artefacts that become new context

The loops feed each other. Every meeting creates a transcript. Every transcript updates person and project pages. Every person page informs the next meeting brief. The system compounds because each piece of work leaves behind better context for the next one.

---

## Prerequisites

- [Obsidian](https://obsidian.md) — free for personal use
- [Claude Code](https://claude.ai/code) — CLI install required
- Python 3.9+ — for sync scripts

---

## Setup

### Option 1 — Clone as a complete vault (recommended)

```bash
git clone https://github.com/mrhoffy/SBOS.git ~/Documents/SBOS
cd ~/Documents/SBOS
claude
```

Open Obsidian → Open folder as vault → select the SBOS folder.

**Two setup documents in `! | Start Here/`** (the `!` sorts this folder to the top of the Obsidian sidebar):**
- `setup-questions.md` — personalizes your content (identity, voice, preferences). Run this first.
- `CONNECTIONS.md` — plugs in your tools (Obsidian plugins, Claude Code, Gmail, Gcal, Slack)

Type `/setup` in Claude Code after completing the interview. Claude writes all your Reference files from your answers.

### Option 2 — Add to an existing vault

Copy these into your existing vault root:

```
CLAUDE.md
! | Start Here/
.claude/
1 | Wiki/1.7 | System/templates/
9 | Reference/   (template files only)
```

### Option 3 — Start from scratch

Paste the contents of `CLAUDE.md` into a new Claude Code session in an empty folder. Tell Claude what you do for a living. Let it ask you questions and scaffold from there.

---

## First Week

**Day 1** — Complete `! | Start Here/setup-questions.md`. Type `/setup`. Review your generated Reference files.

**Day 2** — Connect your first source. Granola or Fireflies for meeting transcripts. Run `refresh-knowledge` on the first batch.

**Day 3** — Review the wiki pages Claude created. Fix anything that looks wrong. This calibrates Claude's understanding of your work.

**Day 4** — Create your first task cards from real work.

**Day 5** — Run `handoff-task` on one card. Review the output. Give feedback with `review-output`.

**Day 6** — Run `weekly-review`.

**Day 7** — Run `check-health` to confirm sources and jobs are working.

After a week: bones. After a month: something you'd miss. After three months: a second brain.

---

## Skills

**Core workflows:**

| Skill | When to use |
|-------|-------------|
| `setup` | First-time onboarding, or after a major role change |
| `meeting-prep` | Before any meeting or call |
| `weekly-review` | Every Monday or Friday |
| `refresh-knowledge` | After new raw files arrive |
| `create-task-card` | When something needs action |
| `handoff-task` | When a task is ready for Claude |
| `review-output` | After reviewing Claude's output |
| `write-draft` | Any written communication |
| `researcher` | Questions about your knowledge base |
| `sync-source` | Adding a new data source |
| `check-health` | System health check |

**Utility skills** (also included):

`avoid-ai-writing` · `content-research-writer` · `internal-comms` · `naming` · `meeting-insights-analyzer` · `csv-data-summarizer` · `defuddle` · `firecrawl-search` · `factory-floor` · `product-manager-skills` · `obsidian-markdown` · `obsidian-bases` · `json-canvas` · `file-organizer`

Full descriptions and usage for all 25 skills: `9 | Reference/skills-index.md`

---

## Key Rules

- **`0 | Raw/` is immutable** — Claude reads files here, never modifies them
- **Drafts, not sends** — Claude never sends email, Slack, or any external message
- **Reference first** — Claude reads `comms.md` before writing anything in your voice
- **Context before prompting** — Claude reads the task card and wiki pages before starting any task

---

## Credits

- Andrej Karpathy: LLM OS gist — page-shape idea and readable knowledge emphasis
- Garry Tan: GBrain — personal AI knowledge system that compounds over time
- Noah Brier: AI & I podcast with Dan Shipper — Obsidian + Claude Code workflow
- Daniel Agrici: [claude-obsidian](https://github.com/AgriciDaniel/claude-obsidian) — vault architecture and skill patterns
- Claude Code — the tool that makes this practical

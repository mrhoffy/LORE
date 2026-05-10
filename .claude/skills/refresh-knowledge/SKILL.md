---
name: refresh-knowledge
description: Process new raw files into wiki pages. Use after new source material arrives.
---

## When to Use

After new files land in `0 | Raw/` from any source.

## Inputs

- Path to new raw file(s), or source folder to scan

## Steps

1. Read each unprocessed raw file (check frontmatter `status: unprocessed`)
2. Extract: people mentioned, projects mentioned, decisions made, open threads, key facts
3. For each person: update or create their page in `1 | Wiki/1.1 | Network/`
4. For each project: update or create their page in `1 | Wiki/1.2 | Initiatives/`
5. For each decision: create a decision record in `1 | Wiki/1.4 | Ledger/`
6. For each open thread: create a task card in `1 | Wiki/1.2 | Initiatives/backlog/` if action is needed
7. Update `1 | Wiki/index.md` with any new pages
8. Update `1 | Wiki/hot.md` with key new context
9. Mark raw file as processed: `status: processed`

## Output

Updated wiki pages, new task cards where needed, updated index and hot cache.

## Safety Rules

- Preserve source links on every wiki page (`sources:` frontmatter field)
- Flag contradictions with existing wiki content — do not silently overwrite
- Never invent facts not present in the source

## What to Update Afterward

- Append to log: `## [YYYY-MM-DD] ingest | [Source] — [key insight]`

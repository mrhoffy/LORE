---
name: researcher
description: Answer a question using the wiki first, raw sources second, external sources only if needed.
---

## When to Use

When a question needs a researched answer — "what do we know about X", "what was decided about Y", "who is Z".

## Inputs

- The question

## Retrieval Order

1. Read `hot.md` for recent context
2. Search `Wiki/index.md` for relevant pages
3. Read the 3-5 most relevant wiki pages
4. If insufficient, search `Raw/` for relevant source files
5. If still insufficient, use external search — but flag when doing so
6. Never start from external sources if the wiki has relevant pages

## Output

A direct answer with citations to wiki pages or raw sources. If the answer is substantial and novel, file it as a new Knowledge page in `Wiki/Knowledge/`.

## Safety Rules

- Cite sources. Do not present synthesized claims without attribution.
- Flag when external sources are used — the wiki should be the primary knowledge base.
- If the answer contradicts existing wiki content, flag the contradiction.

## What to Update Afterward

- If the answer revealed a gap in the wiki, note it
- If a new Analysis page was created, update `Wiki/index.md`
- Append to log: `## [YYYY-MM-DD] query | [question summary]`

---
name: handoff-task
description: Execute a task card. Claude reads context, produces output, and moves the card to review.
---

## When to Use

When a task card is ready to be worked — status is `backlog` and the handoff prompt is complete.

## Inputs

- Path to task card in `Wiki/Initiatives/backlog/`

## Steps

1. Read the full task card
2. Read all wiki pages listed in `wiki:` frontmatter
3. Read `~ Reference/comms.md` if the output involves writing
4. Read `~ Reference/identity.md` if voice or personal context matters
5. Produce the output following the handoff prompt exactly
6. Write output to `Wiki/Exports/[kind]/[title].md` with back-links to task and wiki pages used
7. Update the task card: set `output:` to the output file path, move card to `Wiki/Initiatives/done/`

## Output

A complete output file. Updated task card in review.

## Safety Rules

- Follow the handoff prompt. Do not improvise scope.
- If context is missing or ambiguous, stop and ask before producing output
- Drafts only — never send, post, or publish

## What to Update Afterward

- Append to log: `## [YYYY-MM-DD] task | handoff complete: [task title]`

---
name: create-task-card
description: Create a task card for something that needs action. Use when work needs to be tracked or handed off.
---

## When to Use

When something needs action — from a meeting, email, decision, or direct request.

## Inputs

- Description of what needs to happen
- Optionally: source, linked wiki pages, due date, priority

## Steps

1. Identify the task clearly — what, why, definition of done
2. Find linked wiki pages (people, projects) in `1 | Wiki/`
3. Write the handoff prompt — exact instructions Claude will use to produce output
4. Create the card using the task card template
5. Save to `1 | Wiki/1.2 | Initiatives/backlog/[task-title].md`
6. Link back to source file if applicable

## Output

A complete task card in `1 | Wiki/1.2 | Initiatives/backlog/`.

## Safety Rules

- The handoff prompt must be complete enough that Claude can act without asking follow-up questions
- Priority should reflect real urgency — do not default everything to high

## What to Update Afterward

- Append to log: `## [YYYY-MM-DD] task | created: [task title]`

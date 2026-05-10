---
name: meeting-prep
description: Prepare a pre-meeting brief. Use before any meeting or call.
---

## When to Use

Before any meeting, call, or important conversation.

## Inputs

- Meeting title or attendee names
- Optionally: date, agenda, or goal

## Steps

1. Identify all attendees
2. Read each person's wiki page in `1 | Wiki/1.1 | Network/`
3. Read any related project pages
4. Search `0 | Raw/` for the most recent interaction with these people
5. Check `1 | Wiki/1.2 | Initiatives/backlog/` and `1 | Wiki/1.2 | Initiatives/active/` for anything linked to these people or projects
6. Check `hot.md` for recent context

## Output

A concise brief with:

- **Attendees** — role, relationship, one-line current context
- **Last interaction** — date and key points from the last meeting or exchange
- **Current state** — relevant project or deal status
- **What I need from them** — specific asks or decisions needed
- **What they need from me** — outstanding commitments, follow-ups owed
- **Open threads** — unresolved items from previous interactions
- **Suggested talking points** — 3-5 prioritized items

## Safety Rules

- Never invent context. If a person page does not exist, say so and offer to create it.
- Do not include speculation about intent or sentiment.

## What to Update Afterward

After the meeting, run `ingest` on the Granola transcript (or manual notes) to update person pages, project pages, and create task cards for any new commitments.

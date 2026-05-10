---
name: weekly-review
description: Run the weekly review. Use every Monday morning or Friday afternoon.
---

## When to Use

Weekly — Monday to set direction, Friday to close the loop.

## Inputs

- None required. Optionally specify the week range.

## Steps

1. Read `1 | Wiki/log.md` (last 7 days of entries)
2. Read `1 | Wiki/1.2 | Initiatives/done/` — scan all cards completed this week
3. Read `1 | Wiki/1.2 | Initiatives/backlog/` and `1 | Wiki/1.2 | Initiatives/active/` — what is still in flight
4. Read `1 | Wiki/1.7 | System/health/` — any failed sources or jobs
5. Scan `1 | Wiki/1.1 | Network/` for anyone with `next_touchpoint` overdue
6. Check `0 | Raw/` for loose notes older than 7 days

## Output

A structured review with five sections:

**This week**
- What was completed
- What was decided
- What shipped or moved forward

**Stuck**
- What did not move and why
- What is blocked and on whom

**People**
- Relationships overdue for contact
- Outstanding commitments to or from specific people

**Next week**
- Top 3 priorities
- Meetings that need prep
- Tasks that should move to handoff

**System health**
- Any source sync issues
- Loose notes to process
- Wiki pages that need updating

## Safety Rules

- Report what is in the files. Do not speculate about causes or intent.
- Flag stuck items without assigning blame.

## What to Update Afterward

- Update `hot.md` with the weekly summary
- Create task cards for anything identified as a next-week priority
- Update person pages for any relationship follow-ups flagged
- Append to log: `## [YYYY-MM-DD] weekly-review | [Green/Yellow/Red + one-line summary]`

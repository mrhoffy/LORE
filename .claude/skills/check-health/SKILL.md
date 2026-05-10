---
name: check-health
description: Inspect system health — sources, jobs, issues, and wiki hygiene.
---

## When to Use

Weekly, or anytime something feels off with the system.

## Inputs

- None required

## Steps

1. Read all files in `1 | Wiki/1.7 | System/health/`
2. Check each source: last sync date, items ingested, any errors
3. Check each job: last run, last success, cadence
4. Read `1 | Wiki/1.7 | System/logs/` for recent error patterns
5. Scan `0 | Raw/` for files with `status: unprocessed` older than 24 hours
6. Scan `0 | Raw/` for notes older than 7 days
7. Check `1 | Wiki/` for pages with no inbound links (orphans)

## Output

A health report with three sections:

**Healthy** — sources and jobs running normally

**Warnings** — stale sources, slow jobs, unprocessed files

**Issues** — broken connections, errors, things needing immediate attention

Each issue should include a recommended fix.

## Safety Rules

- Report what the files show. Do not speculate about causes.
- Flag but do not auto-fix issues that could affect data integrity.

## What to Update Afterward

- Create issue files in `1 | Wiki/1.7 | System/health/` for anything requiring follow-up
- Append to log: `## [YYYY-MM-DD] health | [Green/Yellow/Red — one-line summary]`

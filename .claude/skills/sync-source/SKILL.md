---
name: sync-source
description: Add a new data source to the system. Use when connecting Gmail, Slack, calendar, or any new input.
---

## When to Use

When adding a new source for the first time, or troubleshooting an existing sync.

## Inputs

- Source name (e.g. Gmail, Slack, Granola, Fireflies)
- What you want to pull from it
- How often it should sync

## Steps

1. Ask: which source, what API or export is available, what should be pulled, where raw files should land
2. Check `9 | Reference/tools.md` to see if the source is already configured
3. Create or update the sync script in `1 | Wiki/1.7 | System/sync/`
4. Create a health file in `1 | Wiki/1.7 | System/health/`
5. Update `9 | Reference/tools.md` with the new connection
6. Write a test raw file to confirm the format is correct

## Output

- A working sync script in `1 | Wiki/1.7 | System/sync/sync-[source].py`
- A health tracking file in `1 | Wiki/1.7 | System/health/[source]-health.md`
- Updated `tools.md`

## Safety Rules

- Never store API keys in the vault. Use environment variables or keychain references.
- Sync scripts should fail loudly — log errors, never silently skip records.

## What to Update Afterward

- Append to log: `## [YYYY-MM-DD] sync | connected [source] — [what it pulls]`

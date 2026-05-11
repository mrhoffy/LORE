---
name: meeting-audit
description: Audits a calendar or meeting list and classifies each meeting into Lencioni's four types (daily check-in, weekly tactical, monthly strategic, quarterly off-site). Identifies meetings that mix time horizons, run too long, haven't produced decisions in 3+ cycles, or could be async. Use this skill when the user says "my calendar is out of control", "we have too many meetings", "our weekly meeting tries to do everything", "help me clean up our meeting cadence", or when they share a list of recurring meetings and want recommendations. Always produce a structured audit with specific recommendations — don't just describe the framework.
---

# Meeting Audit

Classifies and audits a meeting schedule against Lencioni's four meeting types, identifies pathologies, and produces a concrete recommendation for what to keep, change, merge, cut, or convert to async. Based on Lencioni's *Death by Meeting*, Grove's *High Output Management*, and the Best Business Practices research on operating cadence.

## Source references
- Patrick Lencioni, *Death by Meeting* (four meeting types framework)
- Andy Grove, *High Output Management* (process-oriented vs. mission-oriented meetings; 1:1 design)
- Peter Drucker: if >25% of time in meetings, the org is broken
- Claire Hughes Johnson, *Scaling People* — metronome consistency beats perfect frequency
- Best Business Practices research: Section 6, "Operating cadence and rituals"

---

## Intake questions

Ask these before auditing. If the user has shared their meeting list, extract what you can from it.

**Required:**
1. **The meeting list** — Ask for the list of recurring meetings: name, frequency, duration, attendees (rough count or roles), and stated purpose. A shared calendar screenshot, list, or description all work.
2. **What's broken** — What specifically feels wrong? (Too many meetings total? One specific meeting that's unfocused? No space for deep work? Strategic conversations never happen?)
3. **Company/team size and stage** — Approximate headcount and whether this is a company-wide, team-level, or exec-level audit.
4. **Decision-making context** — Are decisions actually made in these meetings? Or is it mostly status reporting?

**Useful if available:**
- How much time the user (or their team) spends in meetings per week
- Whether there are existing norms around async updates (snippets, standups, Loom, etc.)
- The user's role — are they auditing their own calendar, a team's, or an exec's?

---

## Lencioni's four meeting types — the classification framework

The core problem Lencioni identifies: one undifferentiated recurring meeting that tries to do admin, tactics, and strategy in the same room. **Tactical always drives out strategic** when they share a meeting. The fix is differentiation by type and time horizon — not fewer meetings, but the right kind.

| Type | Frequency | Duration | Purpose | Health signals |
|------|-----------|----------|---------|---------------|
| **Daily check-in** | Daily | 5–10 min | Schedules, attendance, blockers only. No problem-solving. | Ends early; explicit blockers surface |
| **Weekly tactical** | Weekly | 45–90 min | Review metrics first; agenda emerges from what the numbers reveal. No strategic discussion. | Agenda built from metrics; real decisions made |
| **Monthly strategic** | Monthly (or ad hoc) | 2–4 hours | 1–2 topics maximum, prepared in advance. No tactical. Productive conflict welcome. | Pre-read exists; debates happen; decisions made |
| **Quarterly off-site** | Quarterly | 1–2 days | Team health, culture, long-horizon strategy. No operational content. | Feels different from regular work; relationships built |

---

## The six rules of effective cadence

Apply these during the audit to flag failing meetings:

1. **Don't mix time horizons.** Tactical and strategic in the same meeting = strategic gets crowded out every time.
2. **Cancel anything that hasn't produced a decision in 3 consecutive cycles.** It's either theater or should be async.
3. **Async-first for status; sync for debate and decision.** Status updates belong in a doc or snippets, not a meeting.
4. **Pre-read mandatory for meetings over 30 minutes.** No pre-read = no meeting.
5. **Visible decisions produced per meeting.** If no decision is logged, question its existence.
6. **Review the cadence itself quarterly.** What works now won't work in 18 months.

---

## Workflow

### Step 1: Classify every meeting
For each meeting, assign it to one of Lencioni's four types — or flag it as "unclassified" if it genuinely doesn't fit. Be specific: don't just label it, explain why.

### Step 2: Identify pathologies
For each meeting, check against these failure modes:

| Pathology | Signs | Recommendation |
|-----------|-------|---------------|
| **Time horizon mixing** | Agenda has both "Q4 budget" and "who's covering support next week" | Split into two meetings or enforce a hard agenda gate |
| **Status theater** | 30+ min of people reading updates nobody had time to read | Convert to async snippets; protect sync time for decisions |
| **No decisions** | Meeting ends with "let's discuss more next week" | Cancel or convert to async; if decisions are needed, redesign format |
| **Too many attendees for type** | 15 people in a "tactical" meeting | Audience is probably mixed — split into decision-makers + informeds |
| **Missing type** | No monthly strategic or no regular 1:1s | Flag the gap and recommend adding |
| **Over-meeting** | Drucker's heuristic: >25% of the week in meetings | Flag total hours and recommend culling |

### Step 3: Produce the audit table and recommendations
Grade each meeting and give specific, actionable recommendations.

### Step 4: Suggest the ideal cadence
After the audit, propose what a healthy cadence looks like for this team/company — based on stage and size.

---

## Output format

```markdown
# Meeting Audit — [Team/Company] — [Date]

## Summary
- **Total recurring meetings:** [N]
- **Total hours/week in meetings (average):** [N hrs]
- **Drucker threshold:** [X% of working week — flag if >25%]
- **Primary pathology identified:** [One sentence on the main problem]

---

## Meeting-by-meeting classification

| Meeting | Current freq/duration | Type (Lencioni) | Health | Recommendation |
|---------|-----------------------|-----------------|--------|---------------|
| [Name] | Weekly / 60 min | Weekly Tactical | ⚠️ Mixes strategic topics | Split or enforce agenda gate |
| [Name] | Weekly / 30 min | Daily Check-in equivalent | ✅ Healthy | Keep as-is |
| [Name] | Monthly / 2 hrs | Strategic | ❌ No pre-read; no decisions | Add mandatory pre-read; assign DRI per topic |
| [Name] | Weekly / 90 min | Unclassified | ❌ Status theater | Convert to async snippets + shorter sync |

**Key:**
- ✅ Healthy — keep
- ⚠️ Needs adjustment — specific change recommended
- ❌ Cut or convert — not pulling its weight in current form

---

## Gaps in current cadence
[Any of Lencioni's four types that are missing entirely — e.g., "No monthly strategic meeting exists — strategic topics are being squeezed into weekly tactical, which explains why tactical items are always deprioritized."]

---

## Recommended cadence

| Type | Meeting | Frequency | Duration | Owner | Change from current |
|------|---------|-----------|----------|-------|---------------------|
| Daily check-in | [Name or new] | Daily | 10 min | [Role] | New / Replace [X] |
| Weekly tactical | [Name] | Weekly | 60 min | [Role] | Restructure [X] |
| Monthly strategic | [Name or new] | Monthly | 2 hrs | [Role] | New |
| Quarterly off-site | [Name or new] | Quarterly | 1 day | [Role] | Existing or new |

---

## Implementation notes
[Any sequencing advice — e.g., "Don't add the monthly strategic until the weekly tactical is running cleanly. Fix the most broken meeting first."]
```

---

## The 1:1 as a special case

If the audit reveals missing or poorly structured 1:1s, flag separately. Grove's design:
- Minimum 60 minutes (under that, heart-to-heart topics never surface)
- Frequency calibrated to task-relevant maturity: weekly for new/junior, monthly for senior/autonomous
- Subordinate owns the agenda — not the manager
- Final block reserved for career and development conversation
- Rolling shared doc for continuity

90 minutes of 1:1 time influences the next 80 hours of the report's work. It is the highest-leverage ritual in any organization.

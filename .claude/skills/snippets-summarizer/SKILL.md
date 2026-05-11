---
name: snippets-summarizer
description: Takes raw weekly snippet submissions from individuals or a team and synthesizes them into a coherent summary — suitable for an all-hands, async broadcast, leadership update, board prep, or company newsletter. Use this skill when the user provides a set of "what I worked on this week" updates and wants a clean, readable synthesis. Also trigger for "summarize the team updates", "write the weekly update", "pull together the snippets for the all-hands", or "draft the Friday update email". Always produce a specific, usable output — not a template.
---

# Weekly Snippets Summarizer

Synthesizes individual weekly update snippets into a coherent team or company narrative — filtering for signal, grouping by theme, and framing for the intended audience. Based on Google's weekly snippets practice, Stripe's equivalent culture, and the Best Business Practices research on institutional memory.

## Source references
- Google's weekly snippets practice (3–5 bullets per person; aggregated by manager)
- Stripe's writing culture — long-form async updates as institutional memory
- Best Business Practices research: Section 5, "Institutional memory" (weekly snippets as a corpus)
- Best Business Practices research: Section 5, "Communication architecture" (async-first for status)

---

## Intake questions

**Required:**
1. **The snippets** — Paste in the raw weekly updates. Any format works — bullet points, paragraphs, numbered lists, Notion exports, Slack dumps.
2. **Audience** — Who is this summary for? (The team itself / leadership / the whole company / the board / external stakeholders?) The audience determines what to include, what to filter, and what tone to use.
3. **Format / output type** — Where does this go? (All-hands slide / async Slack post / email / weekly digest / internal wiki page?)
4. **Timeframe** — What week is this covering? Any notable events that week to contextualize (product launch, off-site, milestone)?
5. **What to highlight** — Are there specific wins, milestones, or themes the user wants foregrounded? Or should the summary just reflect what's in the snippets?

**Useful if available:**
- The OKRs or priorities this period — allows framing progress against goals
- Names or roles of snippet contributors (so the summary can attribute accurately)
- Last week's summary (for continuity and to catch what's repeated vs. new)

---

## Synthesis principles

**Filter for signal, not volume.** Snippets contain a mix of important progress, routine maintenance, and noise. The summary's job is to distill — not to mention everything. Status updates that don't move the picture forward don't belong in the summary.

**Theme before person.** A good summary groups by what happened (product, customers, people, operations), not by who did it. This reads as a team narrative, not a list of individuals.

**Lead with the most important thing.** Whatever mattered most this week — a shipped milestone, a major customer win, a resolved crisis, a hire — should be first. Don't bury it.

**Numbers whenever possible.** Specific numbers ("signed 3 enterprise logos," "deployed 4 times," "NPS moved from 32 to 38") are more memorable than qualitative descriptions ("good progress on pipeline").

**Preserve credit.** Even in a thematic grouping, attribute significant wins to the people or teams who did the work. Morale matters.

**Flag risks and blockers explicitly.** If snippets contain blockers, open questions, or concerns, the summary should surface these — not smooth them over. A good weekly update tells leadership what needs attention, not just what went well.

---

## Workflow

### Step 1: Read all snippets and identify themes
Before writing, map the content to natural groupings:
- **Product / engineering** (shipped, fixed, in progress)
- **Customers / revenue** (wins, expansions, churn, conversations)
- **People / org** (hires, departures, onboarding, recognition)
- **Operations / process** (infrastructure, tooling, process improvements)
- **Upcoming / next week** (what's coming, what to watch)
- **Blockers / needs attention** (explicit risks or asks surfaced in snippets)

Not every category will apply every week. Skip empty ones.

### Step 2: Filter for the audience
- **Team:** Include most detail; operational context welcome; can name individuals freely
- **Leadership / executives:** Filter to outcomes and impact; light on operational detail; flag blockers prominently
- **Board:** Highest-level only — progress against OKRs, key wins, key risks, one-sentence on each function
- **Company all-hands:** Celebratory tone; specific wins; progress against goals; avoid internal jargon

### Step 3: Draft the summary
Lead with the most important thing. Write thematically. Use specific numbers. Keep it readable — if it's for a Slack post, aim for something that can be skimmed in 90 seconds.

### Step 4: Add a "next week" section
Even if not in the snippets, close with what's coming. This creates continuity and sets expectations.

---

## Output formats

### Slack / async post (most common)
```
📅 *Week of [Date] — Team Update*

*Highlights*
• [Most important win or milestone]
• [Second most important item]
• [Third]

*Product / Engineering*
[2–4 sentences or bullets summarizing shipped work, in-progress work, and notable decisions]

*Customers / Revenue*
[2–4 sentences or bullets on deals, expansions, conversations, churn]

*People*
[Hires, departures, onboarding, shoutouts]

*Operations*
[Process improvements, tooling, anything affecting how the team works]

*Blockers / Needs attention*
• [Specific item that needs a decision or intervention — named owner or ask]

*Next week*
• [Key upcoming milestone or event]
• [What to watch]
```

---

### All-hands slide (leadership reviews)
```markdown
# Week of [Date] — Company Update

## 🏆 Top wins
- [Specific win with number] — [Team]
- [Specific win] — [Team]

## Product
[2–3 sentences on shipped work and roadmap progress]

## Customers
[2–3 sentences on pipeline, logos, expansions]

## People
[Hires, notable moments]

## ⚠️ Blockers & asks
- [Item that needs leadership attention] → [Named ask]

## Next week
- [Key milestone]
- [Event]
```

---

### Weekly digest email
```
Subject: Week of [Date] — [Team/Company] Update

Hi team,

Here's what happened this week.

**The big win:** [Most important thing in 1–2 sentences]

**Product:** [2–3 sentences]

**Customers:** [2–3 sentences]

**People:** [1–2 sentences]

**On the radar for next week:** [2–3 bullets]

Anything missing or wrong? Reply and let me know.

[Name]
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| Listing every item from every snippet | Reads as a data dump, not a narrative | Filter to signal; group by theme |
| No numbers | Vague and unmemorable | Find specific metrics even if approximate |
| No blockers section | Leadership misses what needs attention | Surface explicitly; frame as asks |
| Ordered by person, not theme | Reads as a check-in report | Regroup by theme |
| No "next week" | Update feels backward-looking | Always close forward |
| Wrong audience calibration | Too much detail for board; too little for team | Confirm audience before drafting |

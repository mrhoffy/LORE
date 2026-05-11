---
name: post-mortems-retrospectives
description: Guides blameless post-mortems and retrospectives that convert failures into organizational learning. Use when the user says "we just had an outage", "the launch didn't go as planned", "we missed our Q target and need to understand why", "help me run a post-mortem", "we're reviewing a project that succeeded or failed", wants to establish learning practices, or needs to improve team learning loops. Always produce a structured post-mortem document — not just a discussion outline.
---

# Post-Mortems & Retrospectives

Guides blameless post-mortems and retrospectives that convert failures and successes into organizational learning. Combines the mindset principles from 11 product leaders with a structured facilitation process, 5-Whys root cause analysis, and a document output ready for filing in the wiki.

## Source references
- Google SRE Book — Chapter 15: Postmortem Culture (canonical blameless post-mortem framework)
- Toyota 5-Whys (root cause analysis technique)
- Best Business Practices research: Section 4, "Canonical document types"; Section 5, "Institutional memory"
- Will Larson, *An Elegant Puzzle* — on incident response culture
- Insights from 11 product leaders via Lenny's Research

---

## The blameless principle — establish this first

Before writing anything, confirm the user understands and is committed to blameless framing. This is not just a tone choice — it determines whether the post-mortem produces useful learning.

**Blameless means:** People made the best decisions they could with the information they had at the time. If someone made a mistake, the question is: what in the *system* allowed that mistake to happen and cause harm? Individuals are not blamed — processes, tools, communication patterns, and system design are examined.

**Why blameless matters:** If people fear blame, they don't tell the whole truth. If they don't tell the whole truth, the real root causes stay hidden. The post-mortem produces action items that address symptoms, not causes — and the same incident recurs.

**What blameless is not:** Blameless does not mean "no accountability." Accountability is directed at systems and processes, not individuals. Gross negligence or malice are not excused — but those are extremely rare. Almost every incident is a system failure dressed as a human error.

---

## Core principles

### Reframe failure as growth
Carole Robin: "The acronym is A-F-O-G — Another Fucking Opportunity for Growth. My question, when something has gone wrong, is always: so what did you learn?" When failure occurs, immediately ask "What is the lesson here?" to maintain perspective during painful setbacks.

### Call them retrospectives, not post-mortems
Eeke de Milliano: "Instead of calling something a postmortem, call it a retrospective, so that it's a positive thing — 'Hey, we're learning from this thing.'" Reframing normalizes failure and focuses the team on learning rather than blame. (This skill uses both terms interchangeably — choose the framing that fits your culture.)

### Institutionalize learning reviews
Ben Williams: "We have these team level impact and learnings reviews... The teams continuously document any learnings from data exploration, from experimentation, from user research." Hold regular "Impact and Learnings" reviews focused on insights, not status updates. Socialize learnings across the entire company.

### Grade OKRs for learning, not performance
Christina Wodtke: "What matters is, why 80%? Really focus on the learning... Make sure your grading is secondary to retrospective." The value of grading OKRs lies in the retrospective analysis of *why* a goal was or wasn't hit, not the number itself.

### Pre-mortems need kill criteria
Annie Duke: "A pre-mortem is only effective if it results in 'kill criteria' — pre-determined signals that will trigger a pivot or shutdown." Identify early signals that a project is failing during the pre-mortem and pre-commit to specific actions if those signals appear.

### Make it blameless
Create psychological safety so people can share honestly without fear of punishment. The goal is to understand what happened and why, not to assign fault.

---

## Intake questions

**Required:**
1. **The event** — What happened? (Describe the incident, failure, or outcome to be analyzed. Or: if this is a success retrospective, what was the win?)
2. **Timeline** — When did it start? When was it detected? When was it resolved? How long did each phase last?
3. **Impact** — Who was affected and how? (Customers, revenue, team, data, reputation — quantify where possible.)
4. **What went well** — Even in a failure, something worked. What should be preserved or repeated?
5. **What went badly** — What specifically failed? (Systems, communication, processes, tools, decisions.)
6. **Participants** — Who should be part of the post-mortem? (The people who were involved, not just those who were affected.)

**Useful if available:**
- Incident timeline already drafted (Slack thread, monitoring alerts, on-call notes)
- Metrics showing impact (uptime graph, error rates, affected user count)
- Any prior incidents that look similar (pattern detection)
- Action items already proposed by the team

---

## 5-Whys root cause analysis — the core technique

The 5-Whys surfaces the real cause by asking "why?" repeatedly until you reach a root cause rather than a symptom. Walk the user through this for each primary failure mode.

**Example:**
- Why did the service go down? → Because the database ran out of connections.
- Why did the database run out of connections? → Because a bad deploy introduced a connection leak.
- Why was the connection leak deployed? → Because code review didn't catch it.
- Why didn't code review catch it? → Because there's no automated detection for connection leaks.
- Why don't we have automated detection? → Because we've never prioritized it.

**Root cause:** No automated connection pool monitoring. **Action item:** Add connection pool alerting to CI/CD pipeline.

The goal isn't always exactly five whys — it's to go deep enough that the action item addresses a root cause, not a symptom. If the action item would be "tell people to be more careful," you haven't gone deep enough.

---

## Workflow

### Step 1: Establish the blameless frame
If the user is emotionally raw about the incident (especially if it was very recent), acknowledge the difficulty before moving into analysis mode. Then establish: this document's job is to make the system better, not to find someone to blame.

### Step 2: Determine the type
Is this a **failure post-mortem** (incident, missed target, bad launch), a **success retrospective** (what drove the win), or a **routine checkpoint** (end-of-quarter OKR review)? The structure is the same; the tone and emphasis differ.

### Step 3: Build the timeline
Work through the chronology with the user. A good timeline includes:
- When the failure began (even if not yet detected)
- When it was first detected
- Key actions taken and when
- When it was resolved
- Relevant context around timing (high-traffic period? recent deploy?)

### Step 4: Assess impact
Be specific and quantitative. Vague impact ("this was bad") doesn't drive urgency on action items. Specific impact ("347 customers couldn't log in for 2.5 hours; estimated $18K in revenue impact; 23 support tickets opened") does.

### Step 5: Run the 5-Whys for each root cause
Typically 1–3 root causes per incident. Complex incidents often don't have a single root cause — walk through 5-Whys for each primary failure mode separately.

### Step 6: Identify and prioritize action items
Each action item must be:
- Specific (clear enough that someone can execute it)
- Owned (a named person responsible)
- Dated (a deadline)
- Categorized (Prevention / Detection / Response / Process)

Push back on action items that are vague ("improve monitoring") or don't address a root cause.

### Step 7: Produce the post-mortem document
File in `Wiki/Exports/` with back-links to any related task cards or wiki pages.

---

## Coaching questions

- "What did we learn that we didn't know before starting this project?"
- "If we had to do this again with the same information we had at the start, what would we do differently?"
- "What signals did we see early that we ignored or missed?"
- "What systemic issues contributed to this outcome that we should address?"
- "What kill criteria should we set for similar projects in the future?"
- "How will we ensure these learnings actually influence future decisions?"

---

## Output format

```markdown
# Post-Mortem: [Incident/Event Name]
**Date of incident:** [Date]
**Date of post-mortem:** [Date]
**Severity:** [P1 / P2 / P3 — or equivalent]
**Status:** [Draft | Under review | Final]
**Author:** [Name]
**Participants:** [Names]

---

## Summary
[2–3 sentences: What happened, how long it lasted, and what the impact was. This should stand alone — someone who reads only the summary should understand the event.]

## Impact
| Dimension | Detail |
|-----------|--------|
| Duration | [Start → Resolution] |
| Customers affected | [Number or description] |
| Revenue impact | [Estimate, if applicable] |
| Internal impact | [Teams, workflows, SLAs affected] |

## Timeline
| Time | Event |
|------|-------|
| [HH:MM] | [What happened] |
| [HH:MM] | [Incident detected — how] |
| [HH:MM] | [First response action] |
| [HH:MM] | [Key decision or turning point] |
| [HH:MM] | [Resolution] |

## What went well
[Things that worked — communication, tools, on-call response, rollback procedures. Be specific. These should be preserved and reinforced.]
- [Item]
- [Item]

## What went badly
[Specific failures in process, tooling, communication, or system design. Not "people made mistakes" — what in the system allowed those mistakes to happen?]
- [Item]
- [Item]

## Root cause analysis

### Root Cause 1: [Name]
**5-Whys:**
1. Why [symptom]? → [Answer]
2. Why [answer]? → [Answer]
3. Why [answer]? → [Root cause]

**Root cause:** [Statement of the underlying cause]

### Root Cause 2 (if applicable): [Name]
[Same structure]

## Action items

| # | Action | Category | Owner | Due | Status |
|---|--------|----------|-------|-----|--------|
| 1 | [Specific action] | [Prevention / Detection / Response / Process] | [Name] | [Date] | Open |
| 2 | [Specific action] | [Category] | [Name] | [Date] | Open |

**Action item categories:**
- **Prevention** — stops the failure from happening
- **Detection** — catches it faster if it does happen
- **Response** — reduces recovery time when it occurs
- **Process** — changes how the team operates

## Lessons learned
[2–3 sentences on the most important takeaways. What should every engineer / operator / leader know because of this incident?]

---

*This post-mortem was conducted blameless. The goal is to improve systems and processes, not to assign individual fault.*
```

---

## Common failure modes

| Pattern | Problem | Fix |
|---------|---------|-----|
| "Human error" as root cause | Not deep enough — what allowed the human error to cause harm? | Push the 5-Whys further |
| Action items without owners | Will not get done | Name a specific person for every action item |
| Action items without dates | Creates indefinite deferrals | Assign a deadline to every action item |
| Vague action items ("improve testing") | Unactionable | Make concrete: "Add integration test for [specific scenario] by [date]" |
| Blame framing ("Bob deployed the bad code") | Shuts down honest disclosure | Reframe: "A deploy process that permitted [X] without [safeguard Y]" |
| Post-mortem never reviewed | Action items never close | Add a follow-up review date and assign someone to track closure |
| Very recent incident, emotions high | Causes defensiveness | Consider waiting 24–48 hours; acknowledge the difficulty explicitly |
| Only reviewing failures | Misses what drove successes | Run retrospectives on wins too — understand what to replicate |
| No follow-through | Retrospectives without impact | Assign action item owners before the meeting ends |
| Optimizing the score, not the learning | Focusing on OKR % rather than why | The retrospective matters more than the grade |
| One-time events | Learning only happens for big failures | Make retrospectives a regular practice, not a post-crisis ritual |

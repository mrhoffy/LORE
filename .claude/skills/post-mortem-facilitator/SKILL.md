---
name: post-mortem-facilitator
description: Guides a blameless post-mortem process for incidents, project failures, missed targets, or any significant learning event. Use this skill when the user says "we just had an outage", "the launch didn't go as planned", "we missed our Q target and need to understand why", "help me run a post-mortem", or any situation where something went wrong and the team needs to extract learnings without assigning blame. Always produce a structured post-mortem document — not just a discussion outline.
---

# Post-Mortem Facilitator

Guides a blameless post-mortem that converts failures into organizational learning. Based on Google's SRE post-mortem culture, the 5-Whys root cause technique, and the Best Business Practices research on institutional memory and decision logging.

## Source references
- Google SRE Book — Chapter 15: Postmortem Culture (the canonical blameless post-mortem framework)
- Toyota 5-Whys (root cause analysis technique)
- Best Business Practices research: Section 4, "Canonical document types" (post-mortem structure)
- Best Business Practices research: Section 5, "Institutional memory"
- Will Larson, *An Elegant Puzzle* — on incident response culture

---

## The blameless principle — establish this first

Before writing anything, confirm the user understands and is committed to blameless framing. This is not just a tone choice — it determines whether the post-mortem produces useful learning.

**Blameless means:** People made the best decisions they could with the information they had at the time. If someone made a mistake, the question is: what in the *system* allowed that mistake to happen and cause harm? Individuals are not blamed — processes, tools, communication patterns, and system design are examined.

**Why blameless matters:** If people fear blame, they don't tell the whole truth. If they don't tell the whole truth, the real root causes stay hidden. The post-mortem produces action items that address symptoms, not causes — and the same incident recurs.

**What blameless is not:** Blameless does not mean "no accountability." It means accountability is directed at systems and processes, not individuals. It does not mean gross negligence or malice are excused — but those are extremely rare. Almost every incident is a system failure dressed as a human error.

---

## Intake questions

**Required:**
1. **The event** — What happened? (Describe the incident, failure, or outcome to be analyzed.)
2. **Timeline** — When did it start? When was it detected? When was it resolved or the decision made? How long did each phase last?
3. **Impact** — Who was affected and how? (Customers, revenue, team, data, reputation — quantify where possible.)
4. **What went well** — Even in a failure, something worked. What should be preserved or repeated?
5. **What went badly** — What specifically failed? (Systems, communication, processes, tools, decisions.)
6. **Participants** — Who should be part of the post-mortem? (The people who were involved, not just the people who were affected.)

**Useful if available:**
- Incident timeline already drafted (Slack thread, monitoring alerts, on-call notes)
- Metrics showing impact (uptime graph, error rates, affected user count)
- Any prior incidents that look similar (pattern detection)
- Action items already proposed by the team

---

## 5-Whys root cause analysis — the core technique

The 5-Whys technique surfaces the real cause by asking "why?" repeatedly until you reach a root cause rather than a symptom. Walk the user through this for the primary failure mode.

**Example:**
- Why did the service go down? → Because the database ran out of connections.
- Why did the database run out of connections? → Because a bad deploy introduced a connection leak.
- Why was the connection leak deployed? → Because the code review didn't catch it.
- Why didn't code review catch it? → Because we don't have automated detection for connection leaks.
- Why don't we have automated detection? → Because we've never prioritized it.

**Root cause:** No automated connection pool monitoring. **Action item:** Add connection pool alerting to CI/CD pipeline.

Note: The goal isn't always exactly 5 whys — it's to go deep enough that the action item addresses a root cause, not a symptom. If the action item would be "tell people to be more careful," you haven't gone deep enough.

---

## Workflow

### Step 1: Establish the blameless frame
If the user is emotionally raw about the incident (especially if it was very recent), acknowledge the difficulty first before moving into analysis mode. Then establish: this document's job is to make the system better, not to find someone to blame.

### Step 2: Build the timeline
Work through the chronology with the user. A good timeline includes:
- When the failure began (even if not yet detected)
- When it was first detected
- Key actions taken and when
- When it was resolved or the decision was made
- Any relevant context around timing (was it during a high-traffic period? after a recent deploy?)

### Step 3: Assess impact
Be specific and quantitative. Vague impact ("this was bad") doesn't drive urgency on action items. Specific impact ("347 customers couldn't log in for 2.5 hours; estimated $18K in revenue impact; 23 support tickets opened") does.

### Step 4: Run the 5-Whys for each root cause
Typically 1–3 root causes per incident. Don't try to find one single root cause for complex incidents — it often doesn't exist. Walk through 5-Whys for each primary failure mode separately.

### Step 5: Identify and prioritize action items
Each action item must be:
- Specific (clear enough that someone can execute it)
- Owned (a named person responsible)
- Dated (a deadline)
- Categorized (Prevention / Detection / Response / Process)

Push back on action items that are vague ("improve monitoring") or don't address a root cause.

### Step 6: Produce the post-mortem document
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

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| "Human error" as root cause | Not deep enough — what allowed the human error to cause harm? | Push the 5-Whys further |
| Action items without owners | Will not get done | Name a specific person for every action item |
| Action items without dates | Creates indefinite deferrals | Assign a deadline to every action item |
| Vague action items ("improve testing") | Unactionable | Make concrete: "Add integration test for [specific scenario] by [date]" |
| Blame framing ("Bob deployed the bad code") | Shuts down honest disclosure | Reframe: "A deploy process that permitted [X] without [safeguard Y]" |
| Post-mortem never reviewed | Action items never close | Add a follow-up review date and assign someone to track closure |
| Very recent incident, emotions high | Causes defensiveness | Consider waiting 24–48 hours; acknowledge the difficulty explicitly |

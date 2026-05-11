---
name: escalation-drafter
description: Drafts a structured escalation brief when a problem needs to be surfaced to a manager, skip-level, or cross-functional stakeholder. Use this skill when the user says "I need to escalate this", "I don't know how to bring this up", "this is stuck and I need help", "my manager needs to know about this", or when they're describing a problem that's blocked and needs a decision or intervention from someone with more authority. Always produce a specific escalation document — not just advice about escalating.
---

# Escalation Drafter

Writes a clear, structured escalation brief that surfaces the right information to the right person at the right time. Based on Will Larson's escalation framework, the Best Business Practices research on handoffs and escalations, and the principle that escalation is a feature, not a failure.

## Source references
- Will Larson, *An Elegant Puzzle* — "Escalation is a feature, not a failure"; recurring escalations are diagnostic of missing process
- Best Business Practices research: Section 2, "Handoffs and escalations"
- Claire Hughes Johnson, *Scaling People* — on routing and org communication
- Andy Grove, *High Output Management* — on information flow and manager leverage

---

## The right mindset about escalation

Before drafting, confirm the user understands these principles — they affect how the escalation is written:

**Escalation is not failure.** Well-designed orgs have explicit escalation paths. Surfacing a problem early is a professional act. The failure is either (a) not escalating something that needed it, or (b) escalating things that could and should have been resolved at the IC level.

**The 24-hour rule.** Each level in the escalation chain (IC → manager → skip-level) should have a 24-hour SLA to respond or escalate further. If the user has already tried at their level and it's been longer than 24 hours without resolution, escalating up is appropriate.

**Don't route around managers — copy them.** If the user is escalating to a skip-level or peer, their direct manager should almost always be copied, not bypassed. Bypassing creates political debt.

**When the same escalation recurs, the system is broken — not the person.** If this is the third time this issue has come up, the escalation brief should name that pattern explicitly. It signals to leadership that a process fix is needed, not just a one-time intervention.

---

## Intake questions

**Required:**
1. **The problem** — What is happening? Describe the situation in concrete terms. What has occurred, what is the current state?
2. **The impact** — What is at stake? Who is affected, and what does the downstream consequence look like if this isn't resolved? (Revenue, customer, team, deadline, relationship?)
3. **What you've already tried** — What actions have been taken to resolve this at the current level? What worked, what didn't, and who was involved?
4. **The ask** — What specifically do you need from the escalation recipient? (A decision? Resources? Intervention with another team? An exception to a policy?) Be specific — vague escalations get vague responses.
5. **The deadline** — When does this need to be resolved? Is there a hard external deadline (customer commitment, board meeting, product launch)?
6. **Who is this going to** — Manager, skip-level, peer in another function, or executive? What is their context — do they already know about this situation?

**Useful if available:**
- Any prior communications on this topic (emails, Slack threads, prior escalations)
- Whether this is a pattern (has this come up before?)
- The user's relationship with the escalation recipient

---

## Escalation types — calibrate the tone

| Type | Context | Tone |
|------|---------|-------|
| **Upward (IC → manager)** | Normal course; routine but important | Clear and factual; manager is a partner |
| **Skip-level** | Manager is the bottleneck, or issue is above their authority | Professional, transparent, not adversarial; always copy manager |
| **Cross-functional** | Blocked by another team's decisions or inaction | Collaborative framing first; name shared stakes |
| **Executive** | High-stakes, large-scope, or systemic issue | Crisp, business-impact first; minimal detail until they ask |

---

## Workflow

### Step 1: Clarify the ask
The most common failure in escalation is a vague ask. Before writing, help the user be precise: "A decision on X" is better than "help with X." "Approval to proceed with Y" is better than "your input on Y."

### Step 2: Calibrate urgency vs. importance
Urgent + important: escalate immediately, verbally + in writing.
Important but not urgent: written escalation is sufficient.
Urgent but not actually important: consider whether this needs escalating at all.

### Step 3: Write the escalation brief
Use the template below. Length should match urgency and audience — a skip-level escalation to an executive should be shorter and impact-first. A peer-to-peer cross-functional escalation can have more context.

### Step 4: Add a pattern note if recurring
If the user indicates this problem has come up before, add a closing section naming the pattern and suggesting a systemic fix. This is the highest-value addition — it converts a one-off escalation into a process improvement signal.

---

## Output format

```markdown
# Escalation: [Short title — what this is about]
**Date:** [Date]
**From:** [Name / Role]
**To:** [Recipient name / Role]
**CC:** [Manager name, if escalating beyond direct manager]
**Priority:** [High / Urgent]

---

## Situation
[2–3 sentences: What is happening? What is the current state? Be factual and specific — no interpretation yet.]

## Impact
[What is at risk if this isn't resolved? Quantify where possible: revenue, customer relationship, deadline, team capacity, product launch. Name who is affected.]

## What has been tried
[Specific actions taken to resolve this at the current level. Names, dates, outcomes. This demonstrates the escalation is appropriate — the issue couldn't be resolved without intervention.]

## The ask
[Single clear ask. What specific action, decision, or intervention is needed from the recipient? By when?]

**Ask:** [Specific action]
**By:** [Date/time]

---

## Background (if needed)
[Optional: Any additional context the recipient needs that isn't obvious. Keep this brief — put detail in appendix if it exists.]

---

## Pattern note (if this is recurring)
[Optional but high-value: "This is the [second/third] time this issue has surfaced. The pattern suggests a systemic gap in [process/ownership/tooling]. A one-time resolution will help, but a process fix may be warranted to prevent recurrence."]
```

---

## Shorter format — for Slack or verbal escalation

When the escalation is happening in a real-time channel or meeting:

```
**[ESCALATION]** [Short title]

**What:** [1 sentence on the situation]
**Impact:** [1 sentence on what's at stake]
**Tried:** [What you've already done]
**Ask:** [Specific request]
**By:** [Deadline]

[Name] — tagging you because [why this person specifically].
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| No specific ask | Recipient doesn't know what action to take | Add: "The specific thing I need from you is [X] by [date]" |
| No "what was tried" section | Looks like first-resort escalation | Always document attempts made at lower level |
| Bypassing manager | Creates political risk | Copy manager unless they are the problem being escalated |
| Impact is vague ("this is a problem") | Doesn't land with urgency | Quantify: revenue, customer, deadline, headcount impact |
| Over-long | Executive gets a 5-pager | Business impact first; detail available on request |
| Adversarial tone toward another team | Creates defensiveness, slows resolution | Frame as shared problem, not blame |

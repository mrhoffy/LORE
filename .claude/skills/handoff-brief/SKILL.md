---
name: handoff-brief
description: Creates a written handoff brief for any ownership transfer — sales-to-CS, PM-to-engineering, role transition, project handoff, or departing team member. Use this skill when someone says "I'm handing this off to [person]", "I'm leaving this project", "we're transitioning this account", "help me write a handoff doc", or when an ownership change is happening and the context needs to travel with it. Always produce a specific, complete brief — not a generic template.
---

# Handoff Brief Writer

Produces a structured handoff artifact that carries all critical context from one owner to the next — so the transition is clean, nothing falls through the cracks, and the new owner can hit the ground running. Based on the Best Business Practices research on handoffs, the sales-to-CS canonical ritual, and the product trio model for cross-functional work.

## Source references
- Best Business Practices research: Section 2, "Handoffs and escalations"
- Winning by Design Bowtie model (sales → CS handoff pattern)
- MEDDIC/SPICED qualification frameworks (what sales context must travel to CS)
- Teresa Torres, *Continuous Discovery Habits* — on product trio and avoiding sequential handoffs
- GitLab handbook model — written handoffs as the standard

---

## Intake questions

**Required:**
1. **The handoff** — What is being handed off? (Account, project, process, role, codebase, customer relationship, operational responsibility?)
2. **From / To** — Who is handing off and who is receiving? What do they know already vs. what is new to them?
3. **Current state** — Where does things stand right now? What has happened, what is in progress, what is coming up?
4. **Open items** — What decisions, commitments, or actions are still open that the new owner needs to pick up?
5. **Known risks** — What could go wrong? What are the landmines the new owner needs to know about?
6. **Deadline / timing** — When does the handoff happen? Is there a kickoff meeting? Is there an overlap period?

**Useful if available:**
- For sales-to-CS: MEDDIC/SPICED data from the deal (economic buyer, decision criteria, identified pain, champion, paper process)
- For customer accounts: health score, active use cases, stakeholder map
- For projects: current milestone status, dependencies, technical decisions made (ADRs)
- For roles: any runbooks, playbooks, or SOPs the new owner should read first

---

## Handoff types — what context must travel

Different handoffs have different critical information. Calibrate the brief to the type.

### Sales → Customer Success (highest-stakes handoff in most SaaS companies)
The canonical failure: the customer has to re-explain everything they already told sales. MEDDIC/SPICED context must travel — the new owner should know:
- **Why they bought** (identified pain, desired outcome)
- **Who decides and who uses** (economic buyer vs. champion vs. end users)
- **What was promised** (commitments made during the deal, particularly around features, timelines, or support)
- **Potential risks** (any red flags from the sales process — difficult stakeholder, unrealistic expectations, narrow champion)
- **The 3-business-day kickoff rule** — CS kickoff should happen within 3 business days post-close, while the relationship is warm

### PM → Engineering (or any product-to-build handoff)
The ideal is avoiding this handoff entirely (Teresa Torres's product trio works in discovery together, not sequentially). If the handoff is unavoidable, the brief must include:
- The problem being solved (not just the feature spec)
- User research that informed the design
- Decisions made and decisions still open
- Non-goals (what was explicitly ruled out)
- Success metrics and how they'll be measured

### Role transition (person leaving a job or changing teams)
The most comprehensive handoff — must include everything needed to function independently:
- Active projects and their current status
- Recurring responsibilities (rituals, reports, meetings owned)
- Key relationships (internal and external contacts and their context)
- Tribal knowledge (the stuff that isn't written down anywhere)
- Runbooks for operational tasks

### Project handoff (initiative being transferred mid-stream)
- Why the project exists and what success looks like
- What's been decided, what's still open
- The plan and where it stands
- Known risks and dependencies
- Who else is involved and their roles

---

## Workflow

### Step 1: Identify the handoff type and calibrate the template
Based on the intake, select which template to use. Brief the user on what context is critical to transfer for their specific type.

### Step 2: Surface the tribal knowledge
The most important — and most often missed — part of any handoff. Ask explicitly: "What do you know that isn't written down anywhere? What would the new owner not be able to figure out from the docs?" This catches the undocumented things that actually matter day to day.

### Step 3: Map the open commitments
Every handoff has open commitments. Make sure every one is named with an owner and deadline. Commitments without an explicit transfer of ownership get dropped.

### Step 4: Write the brief
Produce the formatted brief. If there's an overlap period, add a suggested overlap agenda.

### Step 5: Recommend a kickoff meeting structure
For most handoffs, a live or async kickoff is important. Suggest timing and a simple agenda.

---

## Output format

```markdown
# Handoff Brief: [What is being handed off]
**Date:** [Date]
**From:** [Name / Role]
**To:** [Name / Role]
**Handoff date:** [Date]
**Overlap period:** [Duration, if applicable]
**Type:** [Sales→CS | PM→Eng | Role transition | Project | Other]

---

## Context: why this matters
[2–3 sentences: What is this account/project/role? Why does it exist? What is the big-picture goal?]

## Current state
[Where things stand right now. What is in progress, what was just completed, what is coming up next. Be specific — dates, milestones, recent decisions.]

## Key relationships
| Person | Role | Relationship context |
|--------|------|---------------------|
| [Name] | [Title / Company] | [What the new owner needs to know: ally, skeptic, decision-maker, etc.] |

## Open commitments
[Everything that has been promised and must be delivered. Named owner (new owner is taking these on), deadline, and any relevant background.]

| Commitment | Previous owner | New owner | Due | Notes |
|------------|---------------|-----------|-----|-------|
| [What was promised] | [From] | [To] | [Date] | [Context] |

## Open decisions
[Decisions that haven't been made yet. The new owner needs to know these are unresolved and who should make them.]

- [Decision needed]: [Context and who should make it]

## Known risks / landmines
[What the new owner absolutely needs to know that isn't obvious. What could go wrong. What the difficult dynamics are. Be honest — this section prevents foreseeable failures.]

- [Risk]: [Context and suggested mitigation]

## Tribal knowledge
[Things that aren't documented anywhere but matter day-to-day. Preferences, history, undocumented processes, relationship nuances.]

- [Item]: [Context]

## Runbooks / docs to read first
[Links or references to the most important documentation the new owner should read immediately.]
1. [Doc name + link or location]
2. [Doc name + link or location]

## Suggested overlap agenda (if overlap period exists)
| Day | Focus |
|-----|-------|
| Day 1 | Intro call; share this brief; new owner asks questions |
| Day 2–3 | Shadow key meetings / calls together |
| Day 4 | New owner leads; previous owner available for questions |
| Day 5 | Clean transfer; previous owner steps back |

---

## DRI transfer log
**Transfer confirmed by:** [Previous owner signature / date]
**Transfer accepted by:** [New owner signature / date]
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| No open commitments section | Promises get dropped at handoff | Force the list; every commitment needs a new named owner |
| No tribal knowledge section | New owner encounters surprises that could have been avoided | Ask explicitly: "What would surprise them?" |
| Handoff doc = status update | Misses the relationships, context, and risk | Add key relationships table and landmines section |
| No DRI transfer logged | Unclear who is accountable post-handoff | Name the date when accountability formally transfers |
| Sales-to-CS missing deal context | CS has to re-ask what sales already learned | Include MEDDIC/SPICED data explicitly |
| No overlap period for complex handoffs | New owner set up to fail | Recommend at least 1-week overlap for significant roles |

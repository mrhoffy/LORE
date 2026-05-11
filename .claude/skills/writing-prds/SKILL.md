---
name: writing-prds
description: Help users write effective PRDs. Use when someone is documenting product requirements, preparing specs for engineering, writing feature briefs, or defining what to build. Produces a complete document — problem statement, users, goals/non-goals, solution, success metrics, four product risks, pre-mortem, and milestones. Always start with the problem, not the solution. Always produce a specific, usable document — not a template.
---

# Writing PRDs

Produces a product requirements document that defines what to build and why — specific enough that engineering and design can work from it without re-asking the same questions. Combines practitioner principles from 11 product leaders with Cagan's four-risk framework, Torres's problem-first discipline, and a pre-mortem that surfaces failure modes before a line of code is written.

## Source references
- Marty Cagan, *Inspired* and *Empowered* — four product risks; empowered teams get problems, not features
- Teresa Torres, *Continuous Discovery Habits* — problem-first framing; Opportunity Solution Tree
- Dan Olsen, *Lean Product Playbook* — problem space before solution space
- Shreyas Doshi — pre-mortem and LNO framework
- RICE prioritization (Intercom) — Reach × Impact × Confidence ÷ Effort
- Practitioner principles: Maggie Crowley, Bill Carr, Aparna Chennapragada, Eric Simons, Vikrama Dhiman, Claire Vo, Guillermo Rauch, Hamel Husain, Shreya Shankar

For deeper practitioner detail, see `references/guest-insights.md`

---

## The one rule that matters most

**Problem before solution.** The most common PRD failure is specifying a solution before clearly defining the problem. A PRD that begins with "Build X" without establishing the problem is a feature spec, not a product document.

If the user leads with a solution, ask: *"What problem does this solve?"* before writing anything.

Maggie Crowley: "The most important section is the first part — what is the background and context? What is the problem, why does it matter, and why does it matter now?"

---

## Intake questions

Ask these before writing. Extract answers from context already shared; don't re-ask what's obvious.

**Required:**
1. **The problem** — What customer or business problem is this solving? Who experiences it? How painful is it?
2. **The user** — Which specific segment, in what context, when does the problem occur? "Our users" is not an answer.
3. **Evidence** — What signals tell us this is real and important? (Customer interviews, support tickets, churn reasons, sales blockers, data?)
4. **Current state** — How are users solving this today? Workarounds, competing tools, manual processes? This defines the bar to clear.
5. **Proposed solution** — If they have one, treat it as a hypothesis to validate — not a requirement.
6. **Success** — How will we know this worked? What metric moves, by how much, by when?
7. **Why now** — What makes this the right investment at this moment vs. later? If this can't be answered, the priority is questionable.

**Useful if available:**
- Engineering's preliminary feasibility read
- OKR or company goal this ladders into
- Prior research, interview notes, or support data
- Competitive context

---

## Cagan's four product risks — run these on every PRD

Before finalizing, every PRD should address all four. A document that ignores one of these is incomplete.

| Risk | Question | What to include |
|------|---------|----------------|
| **Value** | Will customers actually want this? | Evidence of demand; validation plan |
| **Usability** | Can they figure out how to use it? | UX research; design assumptions; prototype plan |
| **Feasibility** | Can we build it with current resources? | Engineering input; known constraints; spike if uncertain |
| **Viability** | Does this work for the business? | Legal, financial, ethical factors; support model |

For AI features, add a fifth: **Consistency risk** — will the product behave reliably enough that users can form expectations and trust it? Hamel Husain and Shreya Shankar: treat evals as living PRDs — executable evaluations that tell you exactly what the product should do, running constantly.

---

## Format: when to write a doc vs. build a prototype

Eric Simons: "We tend to keep them pretty light. I like to have the minimal amount of context that ensures everyone's on the same page and that key outcomes will be present when we get there."

Guillermo Rauch: "The product management team is now actually building the product. We've specced out in v0, think of it as a live PRD. The amount of detail — we're all saying 'just ship it.'"

Aparna Chennapragada: "If you're not prototyping and building to see what you want to build, you're doing it wrong. Prompt sets are the new PRDs."

**Use a written PRD when:** The initiative is complex, cross-functional, or requires approval. The problem needs to be defined before anyone starts building.

**Use a prototype instead when:** It's a UI or AI feature where behavior is hard to describe in prose. An interactive version communicates more and faster than any document.

**Keep it lightweight when:** The team is small, the decision is reversible, and everyone already understands the problem. The minimum context that aligns the team is enough.

Bill Carr's PR/FAQ test: "Whenever we're devising a new product, we start by writing a press release describing it in a way that speaks to the customer. The idea better jump off the page." If you can't write a compelling press release, the feature may not be ready to spec.

---

## Pre-mortem (run this before finalizing)

Shreyas Doshi: assume it's 6 months from now and this initiative failed. What happened?

Name the top 2–3 failure modes. Each one becomes either a risk item in the PRD with a mitigation, or a reason to redesign the approach before committing.

If the failure modes are hard to articulate, the problem isn't clear enough yet.

---

## Workflow

### Step 1: Validate the problem
Before writing anything, confirm the problem is clearly defined without mentioning a solution. If the user can't describe the problem without referencing a feature, the problem isn't clear yet.

### Step 2: Confirm the user is specific
Push from "our users" to a named segment in a specific context. The persona should be specific enough that two people could agree on what they'd do.

### Step 3: Draft goals and non-goals together
Non-goals are as important as goals. Every ambiguous area needs to be explicitly in or out. Non-goals prevent scope creep from starting on day one.

### Step 4: Run the four risks
Work through value, usability, feasibility, and viability. For each: what do we know, what are we assuming, how will we validate?

### Step 5: Run the pre-mortem
Name the top 2–3 failure modes. Add them as risk items with mitigations.

### Step 6: Write the document

---

## Output format

```markdown
---
title: PRD: [Feature / Initiative Name]
status: draft
owner: [PM Name]
created: [Date]
updated: [Date]
stage: [Discovery | Spec | In Development | Launched]
---

# PRD: [Feature / Initiative Name]

## TL;DR
[2–3 sentences: what is this, why does it matter, and what does success look like?
This should stand alone.]

---

## Problem statement

### The problem
[What happens today? What does the customer have to do that they shouldn't have to?
What pain does this create? Written from the customer's perspective.]

### Who has this problem
[Specific user segment, not "our users." What are they trying to accomplish?
When does this problem occur? How often?]

### Evidence
[What signals tell us this is real and important?]
- [Source]: [Finding]
- [Source]: [Finding]

### Current workarounds
[How do users solve this today? This defines the bar to clear and surfaces
what we're competing with or replacing.]

### Why now
[Why is this the right investment at this moment vs. later?]

---

## Goals and non-goals

### Goals
*If this initiative succeeds, we will:*
- [Specific outcome — measurable or clearly evaluable]
- [Specific outcome]

### Non-goals
*This initiative explicitly does not:*
- [Out-of-scope item — and why it's deferred, not dismissed]
- [Out-of-scope item]

---

## Proposed solution

### Solution hypothesis
[Frame this as a hypothesis: "We believe that [solution] will [outcome] for [user]
because [reason]. We'll know this is working when [signal]."]

### User experience
[Walk through the experience from the user's perspective. Behavioral, not technical.
What does the user do, see, and feel at each step?]

### Key open questions
- [Question that needs resolution — named owner]
- [Question]

---

## Four product risks

| Risk | What we know | What we're assuming | How we'll validate |
|------|-------------|--------------------|--------------------|
| **Value** — will they want it? | | | |
| **Usability** — can they use it? | | | |
| **Feasibility** — can we build it? | | | |
| **Viability** — does it work for the business? | | | |

---

## Pre-mortem
*Assume it's 6 months from now and this initiative failed. What happened?*
- [Failure mode 1] → [Mitigation built into the plan]
- [Failure mode 2] → [Mitigation]

---

## Success metrics

### Primary metric
[The one number that tells us if this worked.]
**Baseline:** [Current] → **Target:** [Goal] by [Date]

### Guardrail metrics
[Metrics that should not decline — things we're protecting even as we optimize.]

### Leading indicators
[Early signals to track in the first 2–4 weeks, before long-term data is available.]

---

## RICE score (if prioritization is needed)
| Reach | Impact | Confidence | Effort | Score |
|-------|--------|-----------|--------|-------|
| [N/quarter] | [0.25–3] | [%] | [person-weeks] | [(R×I×C)÷E] |

---

## Milestones
| Milestone | Owner | Target date |
|-----------|-------|-------------|
| Discovery complete | PM | |
| Design ready | Designer | |
| Engineering kickoff | TL | |
| Internal beta | PM | |
| Launch | PM | |
| Success review | PM | [+60 days post-launch] |

---

## Appendix
[Links to research, design files, technical docs, competitive analysis.]
```

---

## Questions to ask when stuck

- "What problem is this solving, and why does it matter now?"
- "How will you know if this feature was successful — what metric moves?"
- "Who is the customer, and what does their life look like after this ships?"
- "What is explicitly out of scope to prevent scope creep?"
- "Could you build a quick prototype instead of writing more documentation?"
- "What are the top 2 ways this could fail in 6 months?"

---

## Common mistakes to flag

| Mistake | Problem | Fix |
|---------|---------|-----|
| Starting with the solution | Defines the wrong thing | Lead with the problem; reframe the solution as a hypothesis |
| "Our users" as the target | Too broad to design for | Name the segment, context, and motivation |
| No success criteria | Can't tell if it worked | Add baseline → target → timeframe → measurement method |
| No non-goals | Scope creep starts day one | Force the list; every ambiguous area is explicitly in or out |
| No Why Now | Priority gets questioned | Justify timing against alternatives |
| Exhaustive detail | Nobody reads it | Keep it to the minimum that aligns the team |
| No four-risk check | Misses a predictable failure mode | Run value / usability / feasibility / viability before finalizing |
| No pre-mortem | Risks surface at launch, not planning | Name top failure modes before writing the plan |

## Related skills
- Writing Specs & Designs
- Working Backwards
- Stakeholder Alignment
- Shipping Products

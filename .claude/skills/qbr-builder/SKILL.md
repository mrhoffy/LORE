---
name: qbr-builder
description: Structures and drafts a Quarterly Business Review — the metrics review, OKR confidence ratings, look-back, look-forward, reallocation recommendations, and open decisions needed. Use this skill when the user says "help me build our QBR", "I need to prep for the quarterly review", "how do we structure the board meeting?", "help me put together the Q3 review", or when a quarterly review of any kind needs to be structured and prepared. Covers both internal QBRs and customer-facing QBRs.
---

# QBR Builder

Structures a Quarterly Business Review from raw inputs — metrics, OKR results, team updates — into a coherent review artifact ready for internal leadership, the board, or customers. Based on the operating cadence frameworks from Best Business Practices research and the CS QBR model from Gainsight / Winning by Design.

## Source references
- Best Business Practices research: Section 6, "Operating cadence and rituals" (quarterly cadence design)
- Best Business Practices research: Section 7, "Scaling inflection points" (what QBRs surface at each stage)
- Gainsight / Mehta — customer QBR structure
- Winning by Design (Bowtie model) — customer QBR as a recurring impact moment
- Claire Hughes Johnson, *Scaling People* — on quarterly planning and look-back/look-forward structure
- Amazon 6-pager — narrative format for strategic reviews

---

## Intake questions

**First, clarify the QBR type — they have different structures:**

**Required:**
1. **Type** — Internal (leadership/exec team review of company performance) or Customer-facing (CS QBR with a customer account)?
2. **Quarter** — Which quarter is being reviewed? What quarter is being planned?
3. **Audience** — Who is in the room? (CEO + exec team / board / functional leaders / specific customer stakeholders?)
4. **Raw inputs available** — What data or content does the user have? (OKR results, metrics dashboards, team updates, customer health score — whatever exists.)
5. **Time available** — How long is the QBR session? (Determines depth and pacing.)
6. **Key tensions** — What is the hardest thing to discuss in this QBR? (Missed targets, team issues, customer at risk, resource conflict?) Good QBRs surface the hard stuff — don't smooth it.

**For customer-facing QBRs, also ask:**
- What is the customer's desired outcome and how are they tracking against it?
- What is the current health score?
- Is there a renewal or expansion conversation needed in this QBR?

---

## Internal QBR — structure and principles

### Principles
- **Look-back before look-forward.** Start with what happened; resist the urge to rush to planning.
- **Metrics drive the agenda.** The numbers reveal the issues. Let them surface the topics rather than pre-deciding what to discuss.
- **Name what's hard.** A QBR where everything is positive is either a great quarter or a presentation optimized for comfort. Push for the uncomfortable thing.
- **Real reallocation should happen.** If the QBR ends without any change to resources, priorities, or personnel, it may have been theater.
- **Decisions must be made and logged.** A QBR with no decisions is a status presentation.

### Internal QBR agenda (3–4 hours)

**Block 1: Look-back (60–75 min)**
- Metrics review: revenue, ARR, burn, NRR/GRR, product metrics, hiring — against targets
- OKR confidence ratings: each objective rated by the owning leader (not pre-sanitized)
- What went well (specific and attributable)
- What went badly (honest; blameless but specific)
- Key learnings

**Block 2: Cross-functional tensions (30–45 min)**
- Escalations that didn't resolve
- Dependencies that were missed or blocked
- Decisions that need to be made before the next quarter begins

**Block 3: Look-forward (60–75 min)**
- OKR setting for next quarter (or confidence adjustments)
- Resource reallocation (headcount, budget — real changes, not slides)
- Top 3 priorities for next quarter by function
- Risks and mitigations

**Block 4: Decisions and actions (30 min)**
- Explicit decision log: what was decided, by whom, and what changes
- Action items: owner, due date
- What gets communicated to the broader team and how

---

## Customer-facing QBR — structure and principles

### Principles
- **The QBR is for the customer, not for the CS team.** Many QBRs fail because they're structured around what the vendor wants to show, not what the customer needs to see.
- **Lead with their goals, not your product.** Start with what they said they wanted to achieve. Then show progress against that — not a product roadmap tour.
- **Desired Outcome = Required Outcome + Appropriate Experience (Lincoln Murphy).** The QBR should address both dimensions: did they get the outcome they needed, and was the experience working with us appropriate to their context?
- **The renewal conversation should never be a surprise.** If there's a renewal coming, it should be mentioned naturally — not as a separate agenda item at the end.

### Customer QBR agenda (60–90 min)

**Block 1: Their goals (10 min)**
- Restate what they said they wanted to achieve when they started
- Ask: have the goals changed?

**Block 2: Progress against outcomes (20–30 min)**
- Metrics showing value delivered against their stated goals
- Adoption and engagement data
- Specific wins / ROI moments

**Block 3: What's working and what isn't (15 min)**
- Honest assessment — don't only show the good
- Feedback solicitation: what would make this more valuable?

**Block 4: Roadmap and next quarter (15 min)**
- What's coming that's relevant to their goals
- How they can get more value from what they already have

**Block 5: Actions and next steps (10 min)**
- Commitments from both sides
- Renewal context (if applicable)
- Named owners and dates

---

## Workflow

### Step 1: Gather and organize inputs
Work through the data and content the user has. Identify gaps — what's missing that would make this a complete review.

### Step 2: Diagnose the narrative
Before building the structure, identify the central story of the quarter. Was it a strong quarter? A mixed one? A pivot? The structure should serve the narrative, not hide it.

### Step 3: Build the look-back first
The look-back is always harder — people are tempted to rush to planning. Build it first, completely, before touching the look-forward. This is the QBR's most valuable section.

### Step 4: Identify the hard things to surface
Ask the user: what's the most difficult thing to discuss in this QBR? Then help them frame it — not to soften it, but to present it clearly and with a path forward.

### Step 5: Build the look-forward with real reallocation
If the look-back revealed underperformance in a function or initiative, the look-forward should reflect a real change — not just new goals on the same trajectory.

### Step 6: Produce the output

---

## Output format — Internal QBR

```markdown
# Q[N] Business Review — [Company] — [Date]
**Quarter reviewed:** Q[N] [Year]
**Quarter planning:** Q[N+1] [Year]
**Attendees:** [Names / roles]
**Facilitator:** [Name]
**Time:** [Duration]

---

## Executive summary
[3–5 sentences: The narrative of the quarter in plain language. What kind of quarter was it? What was the most important thing that happened — positive or negative? What's the headline going into next quarter?]

---

## Q[N] Look-back

### Metrics against targets
| Metric | Target | Actual | Delta | Trend |
|--------|--------|--------|-------|-------|
| ARR / Revenue | [$] | [$] | [+/-] | [↑ / ↓ / →] |
| NRR | [%] | [%] | | |
| Burn / Runway | [$] | [$] | | |
| Headcount | [N] | [N] | | |
| [Key product metric] | | | | |

### OKR confidence ratings
| Objective | Owner | Q[N] result | Rating |
|-----------|-------|-------------|--------|
| [Objective] | [Name] | [% achieved or narrative] | 🟢 / 🟡 / 🔴 |

### What went well
- [Specific win, attributed]
- [Specific win]

### What went badly
- [Specific miss or failure, with honest root cause]
- [Specific miss]

### Key learnings
- [Learning from what went well or badly — specific enough to act on]

---

## Cross-functional tensions
[Any escalations, unresolved dependencies, or decisions that need to be made before Q[N+1] begins.]

---

## Q[N+1] Look-forward

### Priorities by function
| Function | Top 3 priorities | Owner |
|----------|-----------------|-------|
| [Function] | 1. [Priority] 2. [Priority] 3. [Priority] | [Name] |

### OKRs for Q[N+1]
[Draft OKRs or confidence ratings on existing OKRs — per OKR Writer skill format]

### Resource changes
[Any headcount or budget reallocation — specific, not aspirational]

### Key risks and mitigations
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| [Risk] | [H/M/L] | [H/M/L] | [Action] |

---

## Decisions made
| Decision | Who decided | Date | Next step |
|----------|-------------|------|-----------|
| [Decision] | [Name] | [Date] | [Action + owner] |

## Action items
| Action | Owner | Due |
|--------|-------|-----|
| [Action] | [Name] | [Date] |
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| All green OKRs | Theater — sandbagged targets or optimistic ratings | Ask "which of these do you feel privately uncertain about?" |
| No resource reallocation | QBR didn't change anything | Ask "if you had to reallocate 1 FTE based on Q[N] results, where would it go?" |
| No decisions logged | Status presentation, not review | Add explicit decision section; assign DRI to each |
| Hard things not surfaced | Leadership doesn't know what's actually wrong | Ask "what's the thing you're hoping no one asks about?" |
| Look-forward only | No accountability for last quarter's misses | Always complete look-back first |
| Customer QBR is a product tour | Customer doesn't feel heard | Start with their goals, not the product |

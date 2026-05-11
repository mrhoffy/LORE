---
name: one-on-one-prep
description: Builds a structured 1:1 meeting agenda based on context about the direct report — their role, current projects, recent blockers, career stage, and last conversation notes. Use this skill when a manager says "help me prep for my 1:1 with [person]", "I don't know what to cover in 1:1s", "my 1:1s feel shallow", "I want to be a better manager", or when they share notes from a previous conversation and want to continue. Always produce a specific, usable agenda — not a generic template.
---

# 1:1 Prep Builder

Creates a thoughtful, specific 1:1 agenda that surfaces what actually matters for a direct report — not just project status, but blockers, morale, development, and the manager-relationship itself. Based on Grove's 1:1 design, the task-relevant maturity model, and the async pre-check pattern from Best Business Practices research.

## Source references
- Andy Grove, *High Output Management* — Chapter 10 on 1:1s (the foundational design)
- Claire Hughes Johnson, *Scaling People* — on structured 1:1s and feedback cadence
- Kim Scott, *Radical Candor* — Care Personally + Challenge Directly
- Reid Hoffman, *The Alliance* — tour-of-duty framing for career conversations
- Best Business Practices research: Section 1, "Meeting architecture: differentiate or die"

---

## Intake questions

Ask these before building the agenda. Extract answers from context the user has already shared.

**Required:**
1. **About the person** — Name/role, how long they've been in the role, and approximate seniority (new/ramping, steady contributor, senior/autonomous). This determines agenda weight and frequency.
2. **Current projects** — What are they working on right now? What are the biggest things on their plate?
3. **Known blockers or tensions** — Is anything visibly stuck? Has there been any friction (with the work, with teammates, with the manager)?
4. **Last 1:1 context** — What was discussed last time? Any open action items or commitments from either side?
5. **Manager's goal for this 1:1** — Is there a specific thing the manager wants to accomplish? (Deliver feedback, check in on a concern, discuss a promotion, course-correct, celebrate a win?)

**Useful if available:**
- Any async pre-check the direct report sent (mood, priorities, blockers in writing)
- Upcoming performance review timing (shifts weight toward development)
- Recent notable wins or failures
- Any interpersonal dynamics or team context that's relevant

---

## Core design principles

**The direct report owns the agenda — but the manager comes prepared.**
Grove's design is explicit: the agenda belongs to the subordinate. This is not an update meeting; it's the direct report's channel to raise what matters to them. The manager's role is to listen, ask, and unblock — not to run through their own project checklist. The manager should come with prepared topics but hold them lightly and let the direct report's agenda take priority.

**Task-relevant maturity determines frequency and depth.**
New or ramping employees need weekly 1:1s — they have more to process and less context. Senior, autonomous contributors may only need monthly. The agenda depth should match: new employees need tactical support and clear expectations; senior employees need strategic context and space to raise systemic issues.

**90 minutes of 1:1 influences the next 80 hours of the direct report's work.**
This is Grove's math. Even a 30-minute 1:1 is a high-leverage investment if it's done well. The agenda should be designed to make the *work week* better — not to satisfy a process checkbox.

**Heart-to-heart topics require time.** If the meeting is under 60 minutes, the difficult conversations (feedback, career concerns, morale) rarely surface. These need to feel unhurried. If 1:1s are consistently under 30 minutes, flag this.

---

## Agenda structure

A good 1:1 has four blocks. The time allocation shifts based on context — if there's urgent feedback to deliver, lean toward Block 3; if it's a career check-in, lean toward Block 4.

| Block | Content | Typical time |
|-------|---------|-------------|
| **1. Check-in** | Mood, energy, what's on their mind. No agenda yet — just human contact. | 5–10 min |
| **2. Tactical** | Their projects, blockers, decisions that need the manager's input or unblocking. Manager-specific items (approvals, context to give). | 20–30 min |
| **3. Feedback** | Manager → report: specific, timely feedback on recent work. Report → manager: any feedback on how the manager can be more helpful. | 10–15 min |
| **4. Development** | Career conversation: current tour of duty progress, skills they're building, what's next. Don't skip this block — it's what distinguishes a great manager. | 10–15 min |

---

## Workflow

### Step 1: Classify the direct report's maturity stage
Based on the intake, place them in one of three stages. This shapes the agenda weight:
- **New / ramping (0–6 months in role):** Heavy tactical support. Clear expectations. Explicit onboarding check-ins. Less development (still building the base). Weekly cadence.
- **Steady contributor (6 months – 2 years):** Balanced tactical + development. Feedback loops matter. Monthly or bi-weekly.
- **Senior / autonomous (2+ years or strong performer):** Light tactical (they're mostly unblocked). Heavy on development, strategic context, and career. Monthly may be sufficient.

### Step 2: Surface the most important things to cover
Given the intake, identify the 1–3 most important things for this specific 1:1. Not everything — the most important. These should anchor the agenda.

Examples:
- They've been underwater for 3 weeks → ask about workload and triage
- Big deliverable just shipped → recognize it specifically, not generically
- Performance review in 6 weeks → explicitly discuss where they stand and what would change the outcome
- Open action item from last 1:1 the manager didn't follow through on → acknowledge it first

### Step 3: Build the specific agenda
Write the actual agenda with suggested questions and talking points — not generic prompts, but specific ones based on what the user shared.

### Step 4: Add async pre-check suggestion (if not already in place)
Recommend a 24-hour async pre-check: the direct report sends a short update before the 1:1 with their mood, top priorities, and blockers. This means the 1:1 can start at depth rather than warming up with status.

---

## Output format

```markdown
# 1:1 Prep — [Name] — [Date]

**Role:** [Title] | **Stage:** [New/Ramping | Steady | Senior] | **Cadence:** [Weekly | Bi-weekly | Monthly]
**Last 1:1:** [Date or "unknown"] | **Open action items from last time:** [List or "none flagged"]

---

## Before the meeting — send this async (24hr before)
> "[Name], before our 1:1 tomorrow — anything on your mind you want to make sure we cover? What's your energy/mood this week? Any blockers I should know about?"

---

## Agenda

### Block 1: Check-in (5–10 min)
- "How are you actually doing? Not the work — you."
- [Any specific context — if they mentioned something personal last time, follow up]

### Block 2: Tactical (20–30 min)
**Their items (space for what they bring):**
- [Leave explicit space — this is their agenda first]

**Manager-prepared items:**
- [Specific project]: [Specific question or decision needed — not just "how's X going?"]
  - *What the manager needs to do: [Unblock / give feedback / make decision / provide context]*
- [Specific item from last 1:1 to follow up on]
- [Any approval or resource request to address]

### Block 3: Feedback (10–15 min)
**Manager → [Name]:**
- [Specific recent work to name and reflect on — positive or constructive]
- Suggested framing: "[Specific situation] → [What you observed] → [Impact it had] → [What you'd want to see more/differently of]"

**[Name] → Manager:**
- "Is there anything I'm doing that's making your work harder? Anything you wish I were doing differently?"

### Block 4: Development (10–15 min)
- [Their stated career goal or current tour-of-duty]: Where do they feel they're tracking?
- [Skill they're building or gap to close]: What's one thing from this past month that moved the needle on that?
- "What would make the next 90 days feel like a real win for you — professionally?"

---

## Manager notes / things to listen for
- [Flag any specific concern, tension, or dynamic to be attentive to]
- [Any topic to hold gently vs. push on]
- [What a good outcome for this 1:1 looks like]

---

## After the meeting — log decisions and actions
- [ ] [Action] — [Owner] — [Due date]
- [ ] [Action] — [Owner] — [Due date]
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| Manager runs the whole agenda | Direct report passive; real concerns don't surface | Open with "What's on your mind?" and hold space |
| Only tactical topics | Development never happens; people feel stuck | Add Block 4 explicitly; protect it |
| No specific feedback | Vague praise or no feedback | Name specific situation + behavior + impact |
| 1:1 < 30 min | Hard topics never surface | Flag; recommend at least 45–60 min |
| No rolling doc | Each 1:1 starts from scratch; continuity lost | Recommend shared running doc with date-stamped notes |
| Manager doesn't follow through on their commitments | Trust erodes over time | Always surface open action items from last time at the start |

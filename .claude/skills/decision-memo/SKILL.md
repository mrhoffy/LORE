---
name: decision-memo
description: Produces a structured decision memo — the 7-field written artifact that captures context, options, recommendation, trade-offs, named approver, second-order consequences, and a review date. Use this skill when the user needs to make, document, or communicate a significant decision — whether a product choice, hiring call, pricing change, vendor selection, strategic direction, or any cross-functional decision requiring alignment. Also trigger for "I need to write up a decision", "we're debating between X and Y", "I need leadership to approve this", or "help me think through this call". Don't just discuss the decision — produce the memo.
---

# Decision Memo Generator

Produces the written decision artifact that forces logical coherence and creates a durable record. Based on Amazon's 6-pager approach, Bain's RAPID framework, and the Best Business Practices research on decision protocols.

## Source references
- Jeff Bezos 1997/2015 shareholder letters (Type 1 vs Type 2 decisions)
- Amazon's 6-pager and PR-FAQ culture (narrative over bullets)
- Bain RAPID framework (decision roles)
- Ray Dalio, *Principles* (believability-weighting)
- Best Business Practices research: Section 1, "Decision protocols: match the tool to the decision"

---

## Intake questions

Ask these before writing. If the user has already shared context, extract answers from what they've said rather than re-asking.

**Required:**
1. **The decision** — What exactly needs to be decided? (Ask for a one-sentence version if it's fuzzy — clarity here prevents a weak memo.)
2. **Why now** — What's creating the urgency or timing? Is there a deadline?
3. **Who decides** — Who is the single named Approver? (If they say "the team" or "we'll decide together," flag that DACI clarity is needed first.)
4. **Options on the table** — What are the options being considered? Push for at least 3, including a "do nothing" option where relevant. If they only have 2, ask "what would a third look like?"
5. **Your recommendation** — What do they think the right answer is and why?
6. **Stakes** — Is this reversible or hard to undo? (This determines how much rigor to apply — see Type 1 vs Type 2 below.)

**Useful if available:**
- Any data, metrics, or research supporting the options
- Who has been consulted and what their views were
- Prior decisions this supersedes or connects to

---

## Type 1 vs Type 2: calibrating the memo depth

Before writing, classify the decision. This should be stated explicitly in the memo.

**Type 2 (two-way door) — reversible:** Most decisions. Low cost to undo. Act at ~70% confidence, decide fast, by the smallest possible group. The memo is still valuable for alignment, but keep it lean — a 1-pager is appropriate.

**Type 1 (one-way door) — irreversible or very costly to reverse:** Pricing model changes, key hires, major vendor contracts, architectural choices, fundraising terms, M&A. Deserves full deliberation, ≥3 options, written memo distributed in advance, diverse input before deciding.

The memo format below is calibrated for Type 1 decisions. For Type 2, skip to the streamlined version at the bottom.

---

## Workflow

### Step 1: Clarify the decision type and scope
Confirm with the user: is this Type 1 or Type 2? If they're unsure, the heuristic is: "How painful would it be to reverse this in 6 months?" If the answer is "very" — it's Type 1.

### Step 2: Pressure-test the options
At least 3 options, always. If the user only has 2, ask: "What would a status quo / do-nothing option look like?" or "Is there a hybrid?" Options should be genuinely different, not reframings of the same choice. Each option needs:
- A description (what it actually means in practice)
- Its strongest case
- Its key risk

### Step 3: Write the memo in narrative prose
Amazon's core insight: narrative forces logical coherence. Bullets hide sloppy thinking because they skip the connective tissue — the *because*, *therefore*, *however* that reveals whether the logic actually holds. The memo should read like a short essay, not a slide.

### Step 4: Name the approver and disagree-and-commit expectation
The memo should name who decides. Once decided, everyone commits — challenge respectfully before the decision, commit fully after. State this in the memo.

---

## Output format — Full memo (Type 1)

```markdown
# Decision Memo: [Decision Title]
**Date:** [Date]
**Author:** [Name]
**Approver:** [Single named person]
**Status:** [Draft | Under Review | Decided]

---

## Context and why now
[2–4 sentences: What situation has created this decision? Why does it need to be made now rather than later? What happens if we don't decide?]

## Options considered

### Option A: [Name]
[Description of what this actually means in practice]
**Strongest case:** [Why someone would choose this]
**Key risk:** [What could go wrong or what this sacrifices]

### Option B: [Name]
[...]
**Strongest case:** [...]
**Key risk:** [...]

### Option C: [Name — include status quo or do-nothing where applicable]
[...]
**Strongest case:** [...]
**Key risk:** [...]

## Recommendation
[State the recommended option clearly in the first sentence. Then explain the reasoning in narrative prose — not bullets. This section should make the logic visible: if the reasoning is weak, it will show here.]

## Trade-offs accepted
[What does this recommendation give up? What risks does it accept? Be honest — a memo that only argues one side doesn't help the decision-maker evaluate the recommendation.]

## Second-order consequences
[What else changes if we do this? Who else is affected? What decisions does this create downstream?]

## Decision and next steps
**Decision:** [Filled in after the decision is made]
**Decided by:** [Approver name]
**Date decided:** [Date]
**Follow-up review:** [Date to evaluate whether the decision is working — especially important for Type 1 decisions]

**Next steps:**
- [Action] — [Owner] — [Due date]
- [Action] — [Owner] — [Due date]
```

---

## Streamlined version (Type 2 decisions)

```markdown
# Decision: [Title]
**Date:** [Date] | **Approver:** [Name] | **Decide by:** [Date]

**Decision needed:** [One sentence]
**Options:** A) [Option] B) [Option] C) [Option if relevant]
**Recommendation:** [Option + 2-3 sentence rationale]
**Key trade-off:** [What this accepts or gives up]
**If wrong:** [How we'd know and what we'd do]
```

---

## Common failure modes to catch

| What the user writes | Problem | Fix |
|---------------------|---------|-----|
| No named approver | "We'll decide together" creates diffusion of responsibility | Identify the single Approver via DACI |
| Only 2 options | Creates false binary, misses better paths | Always push to ≥3 |
| Recommendation missing | "Presenting options for the team to decide" | The memo author should have a view; state it |
| Bullets throughout | Hides gaps in reasoning | Rewrite key sections as narrative prose |
| No review date | Decision made, never revisited | Add follow-up review, especially for Type 1 |
| Consequences section missing | Short-term thinking | Ask "what does this change downstream?" |

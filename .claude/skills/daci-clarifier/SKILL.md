---
name: daci-clarifier
description: Clarifies decision roles for cross-functional decisions using the DACI framework (Driver, Approver, Contributors, Informed). Use this skill whenever a decision or project involves more than one team, when ownership feels unclear, when someone says "I'm not sure who decides this", when meetings keep happening without resolution, or when accountability is diffuse. Also trigger for "who should own this", "we're going in circles on X", "I need to figure out who to loop in", or any situation where a cross-functional initiative is stalling due to unclear roles.
---

# DACI Clarifier

Maps the right people to the right roles for cross-functional decisions and projects. Based on the Intuit/Atlassian DACI model, with RAPID (Bain) surfaced for high-stakes decisions and Dalio's believability-weighting for calibrating whose input matters most.

## Source references
- Intuit/Atlassian DACI framework (Driver, Approver, Contributors, Informed)
- Bain RAPID framework (Recommend, Agree, Perform, Input, Decide) — heavier, for high-stakes only
- Ray Dalio, *Principles* — believability-weighting (Chapter on decision-making)
- Best Business Practices research: Section 1, "Decision protocols: match the tool to the decision"
- Claire Hughes Johnson, *Scaling People* — on decision rights at scale

---

## Intake questions

Gather these conversationally. Extract from context the user has already shared.

**Required:**
1. **The decision or initiative** — What needs to happen? Is this a decision to make, a project to execute, or both?
2. **The cast** — Who is involved or should be involved? (Names, roles, or teams — whatever the user has.)
3. **Current confusion** — What's unclear right now? Is it "who decides?" or "who does the work?" or "who needs to be kept in the loop?" or "who has veto power?"
4. **Stakes** — How significant is this decision? Is it reversible? (Determines whether DACI or RAPID is more appropriate.)
5. **Org context** — How does this cut across the org? Which functions are touched?

**Useful if available:**
- Any prior attempt at DACI/RACI for this initiative
- Who the user's principal is (their manager or the executive sponsor)
- Whether anyone has explicitly claimed ownership already

---

## The DACI roles — definitions to use and explain

**Driver (D) — exactly one person**
Owns the *process* of making the decision happen. Runs the meetings, collects input, ensures the decision gets made on time. The Driver does *not* necessarily make the decision. Common confusion: people think Driver = Decider. Correct framing: Driver is the project manager of the decision itself. If there's no Driver, the decision stalls.

**Approver (A) — exactly one person**
The single person with final authority. They can say yes or no. If two people are listed as Approvers, you don't have DACI — you have a committee, and accountability evaporates. If the user lists multiple Approvers, push back and help them identify the single escalation point.

**Contributors (C) — as many as needed**
People whose input meaningfully shapes the decision — subject matter experts, implementors, legal, finance, etc. They are consulted, not deciding. Being a Contributor means your input is sought; it does not mean you have to agree with the outcome. The Driver should actively seek their views before the decision is made.

**Informed (I) — as many as needed**
People who are affected by or need to know about the decision, but who don't shape it. Informing is a one-way communication after the fact. Informed ≠ involved. A common mistake is promoting Informed people to Contributors because it feels more inclusive — this inflates meetings and slows decisions.

---

## RAPID (for high-stakes decisions only)

If the decision is high-stakes, hard to reverse, involves significant budget, legal exposure, or major org change — offer RAPID as an alternative. It's more granular:

- **R (Recommend)** — Proposes the decision with supporting analysis
- **A (Agree)** — Must formally sign off before the decision proceeds (veto power — use sparingly)
- **P (Perform)** — Executes the decision after it's made
- **I (Input)** — Consulted; their views are factored in but not binding
- **D (Decide)** — Makes the final call

RAPID earns its overhead for decisions like: pricing model changes, major vendor contracts, hiring/firing senior leaders, regulatory commitments, M&A.

---

## Believability-weighting (from Dalio)

When mapping Contributors, not all input should carry equal weight. A useful principle: input from someone with a strong track record *in this domain* and who can explain the cause-and-effect reasoning carries more weight than input from someone who just has a title.

When helping the user map Contributors, ask: "For each person you're including, why does their specific expertise matter here?" This surfaces whether people are included for political reasons vs. genuine expertise — and helps the user weight their input accordingly during the decision process.

---

## Workflow

### Step 1: Name the decision clearly
Write a one-sentence statement of the decision. Fuzzy decisions can't be DACI'd cleanly. If the user's framing is fuzzy ("figuring out our go-to-market"), sharpen it ("Decide which ICP segment to prioritize for Q3 outbound").

### Step 2: List all stakeholders and apply roles
Work through the cast the user provides. For each person or team, assign one primary role. Flag conflicts immediately:
- Multiple Approvers → reduce to one, escalate path for disagreement
- Driver and Approver are the same person → flag as a risk (common, but means the process and the decision both rest on one person)
- No Driver → this decision will stall; nominate one
- Contributors list is >6 people → probably has Informed people misclassified

### Step 3: Surface the gaps
After the initial map, ask:
- "Is there anyone who could block this if they're not included as a Contributor?"
- "Who will be most affected by this decision who isn't in the room yet?"
- "Who is the Approver's manager? Do they need to be Informed?"

### Step 4: Draft the DACI table and decision brief
Produce the formatted output with a short explanation of each role assignment.

---

## Output format

```markdown
# DACI Map: [Decision Name]
**Decision:** [One-sentence statement of what is being decided]
**Target decision date:** [Date]
**Decision type:** [Type 1 — irreversible | Type 2 — reversible]

---

| Role | Person / Team | Responsibility |
|------|--------------|----------------|
| **Driver** | [Name] | Owns the process — runs meetings, collects input, ensures decision happens on time. Not the final decision-maker. |
| **Approver** | [Name] | Final authority. Single point of accountability. |
| **Contributor** | [Name] — [why their input matters] | Consulted before decision; their expertise shapes the recommendation. |
| **Contributor** | [Name] — [why their input matters] | [Same] |
| **Informed** | [Name / Team] | Notified after decision is made. Not consulted during. |
| **Informed** | [Name / Team] | [Same] |

---

## How this runs in practice

1. **[Driver]** schedules a decision session and sends pre-read by [date]
2. **Contributors** are consulted individually or in a working session before the decision meeting
3. **[Approver]** makes the final call at the decision meeting or async by [target date]
4. **Informed** parties are notified via [Slack / email / all-hands] within [X days]

## Open questions / flags
- [Any ambiguity in roles flagged here — e.g., "Finance's role as Contributor vs. Approver on budget decisions needs clarification with [name]"]
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| Two Approvers | No single point of accountability | Ask "if they disagree, who wins?" — that person is the Approver |
| Driver = Approver | Process and authority collapse into one person; no checks | Flag and suggest separating if possible |
| 8+ Contributors | Committee decision-making in disguise | Audit each: are they genuinely shaping the recommendation, or just need to be informed? |
| No Informed list | Decision lands as a surprise for affected teams | Map downstream impact and add Informed parties |
| DACI for a task list | DACI is for decisions, not execution workstreams | Suggest RACI for execution; keep DACI for the decision itself |

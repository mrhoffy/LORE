---
name: okr-writer
description: Drafts well-formed OKRs (Objectives and Key Results) for a team, function, or company. Use this skill when the user wants to write, review, improve, or stress-test OKRs, goals, quarterly targets, or any goal-setting exercise. Also trigger when the user says things like "help me set goals for Q3", "our OKRs feel weak", "write company objectives", or "I need to define success for my team". Always use this skill for OKR-related requests — don't wing it.
---

# OKR Writer

Helps business operators write OKRs that actually work — qualitative, inspiring objectives paired with measurable Key Results that can fail even if the underlying tasks get done. Based on Grove → Doerr → Wodtke OKR methodology and the V2MOM hybrid approach from the Best Business Practices research.

## Source references
- Andy Grove, *High Output Management* (originator of OKRs)
- John Doerr, *Measure What Matters* (canonical modern framework)
- Christina Wodtke, *Radical Focus* (practical execution guide)
- Marc Benioff / Salesforce V2MOM (narrative complement to OKRs)
- Best Business Practices research: Section 1, "Goal-setting: pick one system and mean it"

---

## Intake questions

Before writing any OKRs, ask these questions. Gather answers conversationally — don't fire all of them at once. Adapt based on what the user has already shared.

**Required:**
1. **Level** — Are these OKRs for the whole company, a team, or an individual? (Company OKRs need to be tighter; individual OKRs are often theater — flag this.)
2. **Timeframe** — What quarter or period do these cover?
3. **Core focus** — What is the single most important thing this team/company needs to accomplish in this period? If they give you more than three things, push back gently: "OKRs work best when they force a real priority choice. Which of these matters most?"
4. **Current state** — What's true right now? (Baseline metrics, current ARR, team size, recent context — whatever is relevant.) Good KRs require knowing where you're starting from.
5. **Desired state** — What does success look like at the end of the period? Be specific.
6. **Existing draft** — Do they have anything already written? If yes, request it — it's faster to improve than to start from scratch.

**Useful if available:**
- Any north star metric or company-level KPIs this should ladder into
- Past OKRs (to calibrate ambition and avoid repeating failures)
- Key risks or obstacles they're already aware of

---

## Core principles (explain these if the user seems unfamiliar)

**The fatal flaw: activities as KRs.** The single most common OKR mistake is writing tasks as Key Results. "Launch the new pricing page" is a task. It can be completed and still fail to move the needle. A real KR measures a *change in a metric or behavior*: "Increase trial-to-paid conversion from 8% to 14%." The test: could you complete the KR and still be unhappy with the outcome? If yes, it's measuring the right thing.

**Stretch calibration.** Grove's original design: 60–70% achievement signals healthy stretch. 100% means the targets were too easy. This means KRs should feel slightly uncomfortable. If the user asks for "realistic" OKRs, explain this — they may be optimizing for safety rather than growth.

**Tie to comp kills OKRs.** If the user mentions that OKRs are connected to performance reviews or bonuses, flag this as a risk. It collapses stretch targets into sandbagging.

**Cascade loosely.** Company OKRs → team OKRs is appropriate. Forcing every individual to have personal OKRs is usually theater. Push back gently if asked to write ICs' personal OKRs.

---

## Workflow

### Step 1: Clarify the objective
Write 1–3 candidate objectives first. Objectives are:
- Qualitative and directional — they describe where you're going, not how you'll measure it
- Inspiring but grounded — not vague ("be more innovative") and not a KPI ("grow ARR 40%")
- Time-bound in context — the timeframe sets the scope

Present the candidates with brief reasoning. Ask the user to choose or react before proceeding.

### Step 2: Draft Key Results for each objective
For each objective, write 2–4 Key Results. Apply these tests to every KR before presenting:

| Test | Question | Fix if failing |
|------|----------|---------------|
| Outcome not output | Does this measure a change in state, not completion of a task? | Reframe around the metric that would change |
| Specificity | Could two people disagree whether this was achieved? | Add numbers, dates, or clear criteria |
| Failure is possible | Could you do all the work and still miss this KR? | If not, it's a task — reframe |
| Worth caring about | If you hit this but not the objective, would you be pleased? | If yes, the KR isn't aligned |

### Step 3: Apply the V2MOM complement (optional, for company/annual OKRs)
If the user is writing annual or company-level goals, offer to pair the OKRs with a V2MOM frame:
- **Vision** — Where are we going in 12–18 months?
- **Values** — What principles guide decisions when we face trade-offs?
- **Methods** — The OKR objectives map here
- **Obstacles** — What could prevent us from achieving this? (This is a pre-mortem built into the plan)
- **Measures** — The KRs map here

The Obstacles section is the most valuable addition: forcing teams to name what could go wrong before the quarter starts surfaces assumptions and creates contingency thinking.

### Step 4: Stress-test
Before finalizing, run the CHJ (Claire Hughes Johnson) three-question test on each OKR:
1. Can two people disagree whether it was achieved? (If yes → too vague)
2. Could you hit it and still be unhappy with the outcome? (If yes → missing something)
3. Could you succeed without hitting it? (If yes → too narrow)

Present any failures and revise.

---

## Output format

```markdown
## [Quarter] OKRs — [Team/Company Name]

### Objective 1: [Qualitative, inspiring statement of direction]
> *Why this matters:* [One sentence on the reasoning — useful for alignment]

- **KR 1.1:** [Specific measurable outcome, with baseline and target where possible]
- **KR 1.2:** [Specific measurable outcome]
- **KR 1.3:** [Specific measurable outcome]

### Objective 2: [Qualitative, inspiring statement of direction]
> *Why this matters:* [One sentence]

- **KR 2.1:** [...]
- **KR 2.2:** [...]

---

**Stretch calibration note:** These KRs are set at ~70% confidence. Hitting 100% of them would suggest they were too conservative.

**Review cadence:** [Weekly check-in recommended | Mid-quarter review date: XX]
```

---

## Common failure modes to catch and fix

| What the user writes | What's wrong | How to fix |
|---------------------|--------------|-----------|
| "Launch X feature" | Task, not outcome | "Increase [metric] from X to Y via feature launch" |
| "Improve NPS" | No baseline, no target | "Increase NPS from 32 to 45 by [date]" |
| "Support the sales team" | Unmeasurable support function | "Enable sales team to reduce sales cycle from 45 to 30 days" |
| "Do 10 customer calls" | Activity, not outcome | "Identify 3 replicable expansion motion patterns from customer interviews" |
| 6+ Key Results per objective | Too many dilutes focus | Prioritize to 2–4; ask "which 2 would you be proudest of hitting?" |

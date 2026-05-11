---
name: north-star-workshop
description: Helps a company or team identify their North Star Metric — the single compounding metric that captures delivered customer value — and decompose it into input metrics that each team can move. Use this skill when the user asks "what should our north star metric be?", "how do we pick the right metric to focus on?", "our team doesn't know what to optimize for", "we have too many metrics and no clear north star", or when the company is at a stage where alignment around a single success metric would meaningfully improve prioritization and focus. Always produce a specific recommendation, not just a framework.
---

# North Star Metric Workshop

Facilitates the identification of a company's North Star Metric and decomposes it into the input metrics each team can actually move. Based on Sean Ellis's North Star framework, Amplitude's Product Intelligence research, and the Hughes Johnson goal-setting heuristics from Best Business Practices research.

## Source references
- Sean Ellis (originator of "North Star Metric" and growth hacking framework)
- Amplitude's North Star Playbook (John Cutler / Amplitude research)
- Best Business Practices research: Section 1, "Goal-setting: pick one system and mean it"
- Claire Hughes Johnson's goal heuristics: "If two people can disagree whether it was achieved, it's too vague"
- Examples: Airbnb (nights booked), Spotify (time listening), Slack (messages sent), LinkedIn (monthly active users)

---

## What a North Star Metric is — and isn't

**Is:** A single compounding metric that captures the value the company delivers to customers. When this metric goes up, the business is almost certainly healthy. When it goes down, something important has broken.

**Is not:** A revenue metric. Revenue is an outcome, not a value-delivery signal. Revenue can go up while the product gets worse (through pricing changes, one-time contracts, etc.). The North Star should measure something that *causes* revenue — the underlying customer behavior or outcome that the business model depends on.

**Is not:** A vanity metric. Page views, sign-ups, and app downloads don't capture value delivery. If customers sign up and never use the product, the sign-up count is a lie.

**Is not:** Multiple metrics. The whole point is one. If the user insists on multiple metrics, help them find the one that subsumes the others.

---

## North Star examples by business model

| Business model | North Star candidate | Why |
|---------------|---------------------|-----|
| Marketplace | Nights booked (Airbnb), rides completed (Uber) | Captures both supply and demand engagement |
| SaaS / productivity | Messages sent (Slack), weekly active teams (Notion) | Captures actual usage, not just subscription |
| Streaming / media | Time listening (Spotify), hours streamed (Netflix) | Direct measure of value delivered |
| Social / community | Monthly active users + content interactions | Captures engagement and network effect |
| E-commerce | Items purchased per active user | Combines frequency and engagement |
| Enterprise SaaS | DAU/MAU ratio (stickiness) + seats used | Captures adoption depth, not just license count |
| Developer tools | Deployments per week, API calls | Measures actual productive use |
| B2B productivity | Tasks completed / projects shipped | Outcome of the tool, not tool usage |

---

## Intake questions

**Required:**
1. **The business model** — What does the company do? How does it make money? What does a customer "get" from using it?
2. **The customer's job** — What is the job the customer is hiring this product to do? When the product works perfectly, what changes for the customer? (This is the "value delivery" signal to find.)
3. **Current metrics** — What is the company already tracking? What does leadership review in business reviews? What do teams report on?
4. **Stage** — How mature is the business? (Early-stage companies sometimes need to track leading indicators while revenue data is sparse. Later-stage companies often have too many metrics and need to consolidate.)
5. **Where alignment breaks down** — Are different teams optimizing for different things? Is there disagreement about what "success" means?

**Useful if available:**
- Product or business model description
- Current OKRs or KPIs
- Which customer behaviors most strongly correlate with retention and expansion

---

## The North Star selection test

Apply these four tests to any candidate metric. Share these with the user — they're useful for stress-testing any proposal.

| Test | Question | Pass condition |
|------|----------|---------------|
| **Value test** | Does this metric go up when customers get genuine value? | Yes — not just when we extract revenue |
| **Leading indicator test** | Does this predict long-term health better than revenue? | Yes — it should be upstream of revenue |
| **Actionable test** | Can product and engineering teams actually move this metric? | Yes — not external factors only |
| **Non-gameable test** | Could the metric go up in ways that don't represent real value? | Hard to game — if easy to game, it's wrong |
| **Uniqueness test** | Does this capture what's unique about our value proposition? | Yes — a competitor's NSM might look different |

---

## Input metric decomposition

Once the North Star is selected, decompose it into the 3–6 input metrics that drive it. These are the metrics each team owns and optimizes.

**Framework: The North Star tree**
```
North Star Metric
├── Acquisition: How many new customers/users reach a point of value?
├── Activation: How quickly do they experience the core value?
├── Engagement: How often and how deeply are they using it?
├── Retention: Are they coming back? Are they churning less?
└── Expansion: Are they using more, paying more, inviting others?
```

Each input metric should:
- Be owned by a specific team
- Move independently (so you can diagnose which lever is the problem)
- Have a directional relationship to the North Star (when this goes up, NSM goes up)

---

## Workflow

### Step 1: Understand the customer value exchange
Start by asking: "When your product is working perfectly for a customer, what changes for them?" The answer should point directly at the metric.

### Step 2: Generate candidate metrics
Based on the business model and value exchange, propose 3–5 candidate North Star metrics. For each, explain: what it measures, why it captures value, and what its weakness is.

### Step 3: Apply the selection tests
Walk the user through each candidate against the 5 tests. Identify which passes most cleanly.

### Step 4: Stress-test the winner
Ask: "If this metric went up 30% and nothing else changed, would you be confident the business was healthier?" If there's significant doubt, the metric is missing something.

### Step 5: Decompose into input metrics
Map the 3–6 input metrics that drive the North Star. Assign each to a team or function.

### Step 6: Produce the output

---

## Output format

```markdown
# North Star Metric: [Company Name]

## The North Star
**Metric:** [Name of metric]
**Definition:** [Precise definition — what is counted, what is excluded, what time period]
**Why this:** [3–4 sentences explaining why this captures customer value delivery, not just business extraction]

## Selection test results
| Test | Result | Notes |
|------|--------|-------|
| Value test | ✅ Pass | [Why] |
| Leading indicator | ✅ Pass | [Why] |
| Actionable | ✅ Pass | [Who can move it] |
| Non-gameable | ✅/⚠️ | [Risk if any] |
| Uniqueness | ✅ Pass | [Why it's specific to this business] |

## Input metrics

| Input metric | What it measures | Team owner | Relationship to NSM |
|-------------|-----------------|------------|---------------------|
| [Metric] | [Definition] | [Team] | [When this goes up, NSM goes up because...] |
| [Metric] | [Definition] | [Team] | [...] |
| [Metric] | [Definition] | [Team] | [...] |

## North Star tree
```
[North Star Metric]
├── [Acquisition metric] — owned by [Team]
├── [Activation metric] — owned by [Team]
├── [Engagement metric] — owned by [Team]
└── [Retention/Expansion metric] — owned by [Team]
```

## What this changes
- [Specific decision or prioritization question that gets easier with this NSM]
- [Team or meeting that should now track this]
- [What gets deprioritized because it doesn't connect to the NSM]

## What to watch out for
[Any known weakness of this NSM — what it doesn't capture, what could make it misleading, and how to catch that signal separately]
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| Revenue as North Star | Extractive, not value-indicative | Find the leading behavioral indicator |
| Multiple "North Stars" | Diffuses focus; defeats the purpose | Force a ranking and pick one |
| Metric no team can move | Vanity or external factor | Find the upstream driver a team controls |
| NSM easy to game | Optimizes for the metric, not the outcome | Find a harder-to-game proxy |
| NSM changes every quarter | No compound learning | NSMs should be stable; input metrics can adjust |

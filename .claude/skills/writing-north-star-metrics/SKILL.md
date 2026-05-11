---
name: writing-north-star-metrics
description: Helps a company identify their North Star Metric and decompose it into input metrics each team can move. Use when the user asks "what should our north star metric be?", "how do we pick the right metric to focus on?", "our team doesn't know what to optimize for", "we have too many metrics and no clear north star", is choosing their primary success metric, trying to align the team around a key measure, struggling with metric proliferation, or setting up their measurement strategy. Always produce a specific recommendation, not just a framework.
---

# Writing North Star Metrics

Facilitates the identification of a company's North Star Metric and decomposes it into the input metrics each team can actually move. Based on Sean Ellis's North Star framework, Amplitude's Product Intelligence research, and insights from 27 product leaders.

## Source references
- Sean Ellis (originator of "North Star Metric" and growth hacking framework)
- Amplitude's North Star Playbook (John Cutler / Amplitude research)
- Best Business Practices research: Section 1, "Goal-setting: pick one system and mean it"
- Claire Hughes Johnson's goal heuristics: "If two people can disagree whether it was achieved, it's too vague"
- Insights from 27 product leaders via Lenny's Research

---

## What a North Star Metric is — and isn't

**Is:** A single compounding metric that captures the value the company delivers to customers. When this metric goes up, the business is almost certainly healthy. When it goes down, something important has broken.

**Is not:** A revenue metric. Revenue is an outcome, not a value-delivery signal. Revenue can go up while the product gets worse (through pricing changes, one-time contracts, etc.). The North Star should measure something that *causes* revenue — the underlying customer behavior the business model depends on.

**Is not:** A vanity metric. Page views, sign-ups, and app downloads don't capture value delivery. If customers sign up and never use the product, the sign-up count is a lie.

**Is not:** Multiple metrics. The whole point is one. If the user insists on multiple metrics, help them find the one that subsumes the others.

---

## Core principles

### Measure value delivered, not captured
Itamar Gilad: "The North Star metric measures how much value we create for the market. WhatsApp measured messages sent because every message is incremental value. Airbnb used nights booked." Select a metric that tracks core utility provided to the customer, not business extraction.

### Avoid lagging indicators
Jess Lachs: "Retention is a terrible thing to goal on. It's almost impossible to drive in a meaningful way in the short term. Find a short-term metric you can measure that drives a long-term output." Identify proxy metrics that are sensitive to experimentation and correlate with long-term goals.

### Simple beats sophisticated
Jess Lachs: "If people understand it, if they have an intuition around it, if it's something people can talk about across the company, it's going to be a much better metric than your made up composite score that nobody understands." Avoid composite metrics with complex coefficients.

### Measure from the customer's perspective
Jeff Weinstein: "What was the value we're trying to produce for the customer, and can we measure it from their perspective? We suggested 'companies with zero support tickets.'" Define metrics based on the absence of friction or the presence of success moments.

### A high-level mission simplifies decisions
Hari Srinivasan: "Everything at LinkedIn is a very connected ecosystem, but decisions aren't difficult because we're all here to help people connect to economic opportunity." A clear company-wide mission serves as the ultimate tie-breaker for product decisions.

### Name metrics evocatively
Jeff Weinstein: "Picking metric titles that make you feel something. 'Companies with zero support' — the brevity and customer mindset built into the chart name can become currency inside the company." Use simple, evocative names instead of technical database field names.

### Codify definitions precisely
Manik Gupta: "Everyone will talk about the same metric but have different nuances. What is a daily active user? Pick a definition, instrument it, codify it. No confusion." Metrics only drive alignment when backed by precise definitions and accurate instrumentation.

### Select a hard activation metric
Lauryn Isford: "An activation rate that falls in a lower percentage range, maybe 5–15%, is better than a high percentage because it means there's likely much higher correlation with long-term retention." High-bar activation metrics are often more valuable than easy-to-hit ones.

### Revisit periodically
Lauryn Isford: "A North Star metric should be a measure of what you plan to do. Revisit North Star metrics every 6–12 months to ensure they still align with business goals." Be willing to shift if the strategy requires it.

### Avoid revenue as North Star
Sean Ellis: "I think monthly purchases is great because it maps to value people are getting. Units of value from the customer perspective is more important than overall revenue." Revenue should be a product of doing things right, not the day-to-day guiding metric.

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
2. **The customer's job** — What is the job the customer is hiring this product to do? When the product works perfectly, what changes for the customer?
3. **Current metrics** — What is the company already tracking? What does leadership review in business reviews?
4. **Stage** — How mature is the business? Early-stage companies sometimes need leading indicators while revenue data is sparse. Later-stage companies often have too many metrics and need to consolidate.
5. **Where alignment breaks down** — Are different teams optimizing for different things? Is there disagreement about what "success" means?

**Useful if available:**
- Product or business model description
- Current OKRs or KPIs
- Which customer behaviors most strongly correlate with retention and expansion

---

## The North Star selection test

Apply these five tests to any candidate metric. Share them with the user — they're the core stress-test.

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

**The North Star tree:**
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
Ask: "When your product is working perfectly for a customer, what changes for them?" The answer should point directly at the metric.

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

## Coaching questions

- "What specific moment represents a user getting value from your product?"
- "Could a non-technical person in your company understand and discuss this metric?"
- "Can teams actually influence this metric through their work in a quarter?"
- "What would happen if you gamed this metric — what would break?"
- "Does this metric measure value delivered to users or value extracted from them?"
- "Is this a leading indicator or a lagging one that's hard to move?"

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

## North Star tree
[North Star Metric]
├── [Acquisition metric] — owned by [Team]
├── [Activation metric] — owned by [Team]
├── [Engagement metric] — owned by [Team]
└── [Retention/Expansion metric] — owned by [Team]

## What this changes
- [Specific decision or prioritization question that gets easier with this NSM]
- [Team or meeting that should now track this]
- [What gets deprioritized because it doesn't connect to the NSM]

## What to watch out for
[Known weakness of this NSM — what it doesn't capture, what could make it misleading, and how to catch that signal separately]
```

---

## Common failure modes

| Pattern | Problem | Fix |
|---------|---------|-----|
| Revenue as North Star | Extractive, not value-indicative | Find the leading behavioral indicator |
| Multiple "North Stars" | Diffuses focus; defeats the purpose | Force a ranking and pick one |
| Metric no team can move | Vanity or external factor | Find the upstream driver a team controls |
| NSM easy to game | Optimizes for the metric, not the outcome | Find a harder-to-game proxy or add countervailing metric |
| NSM changes every quarter | No compound learning | NSMs should be stable; input metrics can adjust |
| Complex composite metric | Teams can't rally around what they can't explain | Simplify until a non-technical person can discuss it fluently |
| Undefined terms | "Active user" means nothing until codified | Pick a definition, instrument it, enforce it |

---
name: contract-playbook
description: Builds a contract negotiation playbook for a specific contract type — including tiered fallback positions (ideal, acceptable, walk-away) on key clauses like liability, indemnification, IP, data, and termination. Use this skill when the user says "help me build a contract playbook", "what are our standard positions on [clause]?", "I need a redline strategy", "we keep negotiating the same contracts from scratch", or when they want to systematize contract negotiations so 80%+ of redlines resolve without escalating to legal. Note: always recommend legal review for the final playbook.
---

# Contract Playbook Builder

Produces a contract negotiation playbook for a specific contract type — standard positions, tiered fallbacks, escalation criteria, and cycle time targets. Based on the Best Business Practices research on legal/compliance systems and contract lifecycle management best practices.

## Source references
- Best Business Practices research: Section 3, "Legal/Compliance" — contract playbook structure
- Cooley GO / WSGR standard positions (market norms for SaaS contracts)
- Ironclad / LinkSquares (CLM best practices)
- SOC 2, GDPR/CCPA compliance requirements (data clause norms)
- Standard SaaS contract market norms: liability caps, indemnification, IP, data processing

## ⚠️ Legal disclaimer
This skill produces a starting-point playbook based on common market practice. It is not legal advice. The output must be reviewed and approved by qualified legal counsel before use in actual contract negotiations. Clause positions vary significantly by jurisdiction, industry, customer size, and risk profile.

---

## Intake questions

**Required:**
1. **Contract type** — What type of contract is this playbook for? (SaaS subscription agreement, Master Service Agreement, NDA/CDA, Data Processing Agreement, vendor agreement, partnership agreement, professional services, employment offer letter, contractor agreement?)
2. **Which party is your company?** — Vendor/provider or customer/buyer? (Positions differ dramatically based on which side of the table you're on.)
3. **Customer profile** — Who are you typically contracting with? (Enterprise / mid-market / SMB? US-only or international? Regulated industries like health, finance, government?)
4. **Key risk areas** — Which clauses create the most friction or are hardest to negotiate? (Helps prioritize the playbook.)
5. **Current state** — Are contracts currently negotiated ad hoc? Is there an existing playbook that needs updating?
6. **Compliance obligations** — Are there specific compliance frameworks that must be reflected? (SOC 2, HIPAA, GDPR, CCPA, FedRAMP?)

**Useful if available:**
- Sample of a recent redlined contract (to calibrate what's actually getting negotiated)
- Current outside counsel's standard positions
- Any prior escalations or deals lost over specific clause positions

---

## Contract playbook structure

A contract playbook answers one question per clause: **What will we accept, what will we fight for, and what is the line we won't cross?**

Each clause gets three positions:
- **Ideal position** — What you ask for in your standard paper. What you want if the customer doesn't push back.
- **Acceptable position** — What you'll agree to after negotiation. The middle ground you can live with.
- **Walk-away position** — The minimum you require. If a customer won't agree to this, the deal doesn't proceed without legal escalation.

The playbook also defines:
- **Can sales/CSM accept?** — Can the field team agree to this without legal review?
- **Escalate to legal?** — Which positions require legal sign-off before accepting?
- **Cycle time target** — Standard paper should close in under 7 days; heavily negotiated enterprise in 14–21 days.

---

## Key clauses by contract type

### SaaS / MSA (most common)

#### Liability Cap
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | Mutual cap at 12 months of fees paid in the 12 months preceding the claim | Standard SaaS market norm; symmetric |
| **Acceptable** | 12–24 months of fees; or separate cap for specific high-risk claims | Still protects against catastrophic exposure |
| **Walk-away** | Unlimited liability or cap below 6 months of fees | Uninsurable exposure; do not accept without legal |
| **Carve-outs (always excluded from cap)** | Death/personal injury from negligence; fraud; IP indemnification; data breach (often negotiated separately) | These are standard carve-outs; unlimited isn't unusual |

#### Indemnification
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | Mutual indemnification for third-party IP claims; each party indemnifies for its own IP | Symmetric; standard |
| **Acceptable** | Vendor indemnifies customer for IP claims against vendor's product; customer indemnifies for misuse | Customer's use-case risk should stay with customer |
| **Walk-away** | Broad indemnification for consequential damages arising from any breach | Covers too much; exceeds liability cap intent |
| **Escalate** | Any unilateral broad indemnification; any indemnification for "all losses" language | Requires legal review |

#### IP / Work Product
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | Vendor retains all IP in the product and platform; customer retains IP in their data | Clean separation; standard SaaS |
| **Acceptable** | Customer owns custom work product from professional services engagements; vendor retains underlying platform | Fair if PS is genuinely bespoke |
| **Walk-away** | Customer claims ownership of any modifications to the core platform or general improvements | Clouds the product IP; do not accept |
| **Escalate** | Any "work for hire" language that could assign platform rights; joint ownership provisions | Requires legal + product review |

#### Data / Privacy
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | Vendor as data processor; customer as data controller; DPA attached; GDPR/CCPA-compliant terms | Standard; required for EU/CA customers |
| **Acceptable** | Standard DPA with minor modifications to sub-processor list or notification timelines | Negotiate specifics, not the structure |
| **Walk-away** | Vendor agrees not to use customer data for any purpose, including product improvement | Check against your actual data practices; may block legitimate analytics |
| **Escalate** | Any data residency requirements (hosting in specific geographies); health data (HIPAA); government data | Infrastructure and compliance implications; always escalate |

#### Termination
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | Either party may terminate for cause on 30-day notice with opportunity to cure; customer may terminate for convenience with 60-day notice but owes remaining annual commitment | Protects ARR; industry standard |
| **Acceptable** | 30-day cure period for material breach; 90-day termination for convenience with fee obligation | Slightly more flexibility for customer |
| **Walk-away** | Termination for convenience at any time with immediate refund of all prepaid fees | Destroys revenue predictability |
| **Escalate** | Auto-renewal clauses the customer wants to remove (often a negotiation tactic); termination triggers tied to personnel changes | Revenue impact; requires sales + finance review |

#### SLAs / Uptime
| Position | Clause | Rationale |
|---------|--------|-----------|
| **Ideal** | 99.9% uptime SLA; credits as sole remedy; credit cap at 30 days of fees | Standard SaaS; credits, not refunds |
| **Acceptable** | 99.5% minimum; credit calculation capped at 1 month fees | Slightly lower bar |
| **Walk-away** | Downtime triggers termination rights; SLA breach = refund of all fees | Creates existential risk |
| **Escalate** | Enterprise SLAs above 99.9%; penalties beyond credits; availability measured by customer's own tools | Engineering must confirm feasibility |

---

### NDA / CDA
| Position | Ideal | Acceptable | Walk-away |
|---------|-------|-----------|----------|
| **Term** | 2 years with 1-year survival of confidentiality obligations | 3 years with 2-year survival | Perpetual confidentiality for commercial information |
| **Scope** | Mutual; limited to specific purpose | Mutual; broader scope | One-way (customer receives only) without reciprocity |
| **Exclusions** | Standard (public domain, independently developed, received from third party, required by law) | Expanded exclusions for specific industries | No exclusions |
| **Remedy** | Injunctive relief + actual damages | Injunctive only | Specified liquidated damages |

---

## Escalation criteria

Define what requires legal review before accepting:

**Always escalate to legal:**
- Any unlimited liability provision
- Any joint IP ownership or work-for-hire language covering the core platform
- Government or regulated-industry data requirements (HIPAA, FedRAMP, ITAR)
- Termination-for-convenience without fee obligation on annual contracts
- Indemnification for consequential or punitive damages

**Sales can accept without legal (with approval from manager):**
- Liability cap adjustments within ideal–acceptable range
- Uptime SLA credits within defined parameters
- Minor DPA modifications (sub-processor notice period, etc.)
- Payment term adjustments (net 30 vs. net 45)

---

## Output format

```markdown
# Contract Playbook: [Contract Type]
**Version:** 1.0
**Effective date:** [Date]
**Owner:** [Legal or Legal + Sales Ops]
**Review cadence:** Annual (or after any deal lost over contract terms)
**Status:** [Draft — pending legal review]

---

## Playbook purpose
[One paragraph: what this playbook is for, who uses it, and how it relates to the standard paper and the legal team.]

## Cycle time targets
- Standard paper (no redlines): < 7 days
- Lightly negotiated (within acceptable positions): < 14 days
- Heavily negotiated (escalations to legal): < 21 days
- Government / regulated: case by case

---

## Clause playbook

### [Clause Name]
| Level | Position | Can sales accept? |
|-------|---------|-----------------|
| **Ideal** | [What your standard paper says] | Yes |
| **Acceptable** | [What you'll agree to after negotiation] | Yes, with manager approval |
| **Walk-away** | [What triggers escalation] | No — escalate to legal |

**Escalation triggers:** [Specific language or conditions that require legal review]
**Market context:** [Why this position is defensible — what's standard in the market]

[Repeat for each clause: Liability, Indemnification, IP, Data/Privacy, Termination, SLA, Payment, Auto-renewal, Governing law, Dispute resolution]

---

## Escalation path
1. **Field team** identifies a clause outside acceptable range
2. **Sales manager** confirms escalation is warranted
3. **Legal** reviews within [SLA] and provides marked-up language
4. **Deal desk** tracks and updates playbook if a new market position emerges

## Appendix
- Link to standard paper template
- Link to DPA template
- Link to outside counsel contacts
- Compliance framework cross-references (SOC 2, GDPR, HIPAA if applicable)

---

⚠️ *This playbook is for internal guidance only and does not constitute legal advice. All positions should be reviewed and approved by qualified legal counsel.*
```

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| No walk-away defined | Sales accepts anything to close the deal | Explicit walk-away per clause |
| Legal reviews every redline | Slows deal velocity; bottleneck | Expand "sales can accept" range; train field team |
| Playbook not updated after lost deals | Positions drift from market | Add "update trigger" when a deal is lost over contract terms |
| Only one position per clause | No negotiation room | Always three tiers |
| No escalation SLA | Legal response unpredictable | Define SLA for legal turnaround |

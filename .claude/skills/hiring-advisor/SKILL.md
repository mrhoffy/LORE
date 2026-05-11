---
name: hiring-advisor
description: Recommends the right next hire for a function based on company stage, ARR, and headcount — and what to install before that hire arrives. Use this skill when the user asks "when should I hire a [role]?", "should I hire a CFO or a Controller?", "do we need a VP Sales yet?", "what should my first CS hire look like?", "fractional or in-house?", or when they're making a hiring decision and need to calibrate against stage-appropriate norms. Always give a specific recommendation with reasoning — not a generic overview.
---

# Hiring Sequence Advisor

Recommends the right hire for a given function at a given stage — including when to use fractional vs. in-house, what to install before the hire arrives, and what failure modes to avoid. Based on the functional build-out sequences from Best Business Practices research, synthesizing Gainsight, Roberge, Lemkin, McCord, and Hughes Johnson frameworks.

## Source references
- Claire Hughes Johnson, *Scaling People* — People/HR hiring sequence; first-time manager support
- Mark Roberge, *The Sales Acceleration Formula* — Sales hiring sequence and regression traits
- Jason Lemkin / SaaStr — "Don't hire a VP Sales until you've personally closed ~10 customers"
- Gainsight / Lincoln Murphy — CS hiring benchmarks and segmentation
- Best Business Practices research: Section 3, all functional subsections (Finance, People, Legal, CS, Sales, Marketing, Product, Engineering, Data, BizOps)
- Reid Hoffman / Chris Yeh, *Blitzscaling* — "Hire and fire based on stage fit"

---

## Intake questions

**Required:**
1. **Function** — Which function is this hire for? (Finance, People/HR, Legal, Customer Success, Sales, Marketing, Product, Engineering, Data/Analytics, BizOps/Ops, CoS)
2. **Stage signals** — Current ARR (if revenue-generating), total headcount, funding stage (pre-seed / seed / Series A / B / C+), and how long the company has been operating.
3. **What exists today** — Is anyone currently doing this work? Founder, generalist, fractional, contractor, or a junior person in a stretched role?
4. **What's breaking** — What problem is driving the hire consideration? (Specific pain point — not just "we need someone for X")
5. **Budget awareness** — Fully-loaded hire, or open to fractional / contract?

**Useful if available:**
- Recent growth rate (helps calibrate urgency)
- Any specific candidate in mind (helps stress-test whether the level is right)
- What the founder is currently doing in this function that they want to hand off

---

## Stage-fit principle — the most important concept

From Reid Hoffman: **hire and fire based on stage fit.** A great hire at 50 people is often a poor hire at 200 people — and vice versa. When advising on a hire, always specify what stage this person is right for, and at what point the company will need to hire above or below them.

Hughes Johnson's warning: "Bring experienced execs in at one level below their last role. People used to resources flounder in ambiguity." Senior executives hired too early often create bureaucracy, expect support infrastructure that doesn't exist, and move too slowly for the current stage.

---

## Hiring sequence by function

### Finance / FP&A
| ARR / Stage | Right hire |
|-------------|-----------|
| Pre-revenue → Seed | Founder handles; use an accountant for bookkeeping |
| $0–3M ARR (Seed → Series A) | Fractional CFO (Burkland, airCFO) |
| $3–10M ARR (Series A) | In-house Controller |
| $10–30M ARR (Series A/B) | Add FP&A analyst or manager |
| $30–50M ARR (Series B/C) | Full-time CFO with IPO/M&A experience |

**Install before the hire:** Monthly close process; 13-week rolling cash forecast; basic chart of accounts in QuickBooks or NetSuite.

**Stack:** QuickBooks → NetSuite; Ramp/Brex; Mosaic or Cube for FP&A; Carta for cap table.

---

### People / HR
| Headcount / Stage | Right hire |
|-------------------|-----------|
| 1–15 people | Founder handles; use an employment attorney for compliance |
| 15–40 people (Series A) | First People generalist (HR + recruiting in one) |
| 40–100 people (Series A/B) | Split: dedicated Recruiter + People Ops; Head of People |
| 100–250 people (Series B) | HRBPs embedded in functions |
| 250+ people (Series C+) | CPO/CHRO on exec team |

**Install before the hire:** Job levels and comp bands (before headcount explodes — title inflation and pay inequity are extremely hard to unwind later); structured interview rubrics; 30/60/90 onboarding with ramp criteria.

**Key texts:** Hughes Johnson, *Scaling People*; McCord, *Powerful*; Scott, *Radical Candor*.

---

### Legal / Compliance
| Stage | Right hire |
|-------|-----------|
| Pre-seed → Seed | Outside counsel (Cooley, WSGR, Gunderson, Orrick) |
| Seed → Series A | Add fractional GC ($2–10K/month flat) |
| Series A/B (50–150 people; outside spend >$40–60K/mo) | First in-house counsel (ex-Cooley/WSGR commercial associate) |
| Series B/C | Add employment, privacy, and IP specialists |
| Series C+ | GC on exec team; public-company readiness 18–24 months before IPO |

**Install first (day zero, non-negotiable):** Delaware C-corp; 83(b) elections within 30 days; founder IP assignments; CIIAAs for every employee and contractor.

---

### Customer Success
| ARR / Stage | Right hire |
|-------------|-----------|
| $0–1M ARR | Founder handles; CS is embedded in sales/product |
| $1–3M ARR | First CSM (often player-coach, handling implementation too) |
| $3–8M ARR | 2–3 additional CSMs; split onboarding from ongoing; add CS Ops |
| $8–20M ARR | VP CS; segmentation (high-touch/low-touch/tech-touch) |

**Book-size benchmarks (Gainsight):**
- Enterprise: 10–25 accounts at $2–10M each per CSM
- Mid-market: 30–75 accounts at $50–250K per CSM
- SMB: 100–300+ pooled or tech-touch

**Install before the hire:** Customer segmentation criteria; onboarding playbook with explicit Time-to-First-Value; health score model.

**Key metrics:** NRR (best-in-class 120%+); GRR (>90% SMB, >95% mid-market, >97% enterprise).

---

### Sales / Revenue
| ARR / Stage | Right hire |
|-------------|-----------|
| Pre-$1M ARR | Founder closes; no AEs yet |
| $1–2M ARR | First 2 AEs — hire in pairs to benchmark |
| $2–5M ARR | First Sales Ops; SDR/BDR function |
| $5–10M ARR | VP Sales (manages 6–8 AEs) |
| $10–25M ARR | Segment into SMB/Mid-Market/Enterprise; Sales Engineers |

**Lemkin's rule:** Don't hire a VP Sales until the founder has personally closed ~10 customers with repeatable ICP, objections, and pricing. A VP Sales hired before this is solving a problem the founder hasn't diagnosed yet.

**Roberge's AE traits:** Coachability, curiosity, intelligence, work ethic, prior success — regression-tested at HubSpot.

**Comp benchmark:** 50/50 base:variable; 4–5× quota:OTE; 10% commission at 100% attainment; 1.5–2× accelerators above quota.

---

### Marketing
| Stage | Right hire |
|-------|-----------|
| Seed → Series A | Founding PMM (π-shaped: positioning + demand gen breadth) |
| Series A | Alternate fuel (content/brand) and engine (demand gen) hires |
| Series B+ | VPM or CMO; channel specialists |

**Hire a PMM first** (Emily Kramer / MKT1 framework). PMM bridges positioning, launches, and sales enablement — connecting the fuel (content, brand) with the engine (demand gen, lifecycle, events). Hiring a pure demand gen specialist first is a common mistake — you have no positioning to drive demand toward.

**Install first:** April Dunford positioning exercise; ICP definitions; messaging architecture; lead→MQL→SQL definitions with sales SLA.

---

### Product
| Engineers / Stage | Right hire |
|-------------------|-----------|
| Pre-10 engineers | Founder as PM; no dedicated PM yet |
| ~10–15 engineers (2–3 years in) | First PM — founding/principal PM (senior IC, often ex-engineer) |
| 3 PMs | Head of Product |
| 150–250+ people, multiple product lines | CPO |

**Cagan's ratio:** 1 PM : 1 designer : 6–10 engineers.

**Install first:** Outcome-based roadmapping; PRDs/product briefs; continuous discovery cadence (Teresa Torres's weekly customer touchpoints).

---

### Engineering
| Engineers | Right hire |
|-----------|-----------|
| 1–5 | Full-stack generalists |
| 5–15 | First engineering manager |
| 15–20 | Split CTO (technical vision) and VPE (people, delivery, hiring) |
| 20–30 | First staff engineers and architect |
| 50–75 | Director layer; 1:8 manager:IC ratio |
| 75–150 | Dedicated platform team, SRE, security |

**Team size:** 6–8 engineers optimal (Larson). Below 4 doesn't survive attrition; above 10 loses coherence.

---

### Data / Analytics
| Stage | Right hire |
|-------|-----------|
| Post-Series A, 20–50 people, revenue-generating | Senior analytics engineer/generalist first — not a data scientist |
| 50–75 people | Business-facing analyst |
| Data hire #3 | Analytics or data engineer |
| ~5 people on data team | Head of Data |
| 100–200+ | First data scientists |

**Hewing's rule:** "Startups are too stingy here; hiring junior is a huge mistake." Reports to CTO, COO, or CFO — never CMO (too narrow scope).

---

### BizOps / Strategy & Ops
| Stage | Right hire |
|-------|-----------|
| Series A | First BizOps/Strategy & Ops Manager |
| Series B | Head of BizOps |
| Series C+ | Consider COO or VP Strategy & Ops |

**Three archetypes:** Strategic BizOps (ex-MBB, M&A, new market entry); Operational/RoB (owns AOP, QBRs, board prep, OKRs); Hybrid generalist (runs a function, market, or marketplace side).

**Fishner's warning:** Don't give BizOps ownership of KPIs that belong to functional leaders — that destroys accountability.

---

## Workflow

### Step 1: Identify stage and function
Map the user's context to the stage table above. If signals are mixed (e.g., $8M ARR but only 15 people), use the most conservative signal.

### Step 2: Give a specific recommendation
Don't just recite the table — make a call. "At $4M ARR with a founder-led CS function and NRR tracking at 95%, your next hire should be a player-coach CSM focused on onboarding, not a VP CS. Here's why..."

### Step 3: Name what to install before the hire arrives
Every function has prerequisites — process and tooling that needs to exist before a senior hire can be effective. Name these explicitly.

### Step 4: Flag the stage-fit window
Name approximately when this hire will be right, and approximately when the company will need to hire above them. Managing expectations prevents retention problems.

---

## Output format

```markdown
# Hiring Recommendation: [Function] at [Stage]

**Company context:** [ARR / Headcount / Stage]
**Current state:** [What exists today]
**Problem being solved:** [What's breaking]

---

## Recommendation
**Hire:** [Specific role — not a job title, but a description of what this person actually does]
**Timing:** [Now / In N months when X is true]
**Fractional or in-house:** [Which and why]
**Stage fit:** [Right for now through approximately X stage; plan to hire above at Y]

## Why this and not [common alternative]
[Explain the tradeoff — why not hire a VP when a manager is right, or why not wait when action is needed now]

## What to install before this hire arrives
- [Specific process, tool, or document] — [why it needs to exist first]
- [Specific item]
- [Specific item]

## What good looks like in the first 90 days
[What this hire should accomplish and how you'll know it's working]

## Red flags to watch in the interview process
- [Specific warning sign relevant to this role and stage]
- [Warning sign]

## When this hire is no longer the right person
[Honest staging — at what point does the company need to hire above this person or restructure the function?]
```

---
title: Skills Index
type: reference
updated: 2026-05-09
---

# Skills Index

All skills available in this vault. Invoke with `run [skill]` or `/[skill]` in a Claude Code session.

---

## Meta

| Skill | Command | What it does |
|-------|---------|-------------|
| **task-observer** | *(auto — no manual invoke needed)* | Silent observer that runs in the background of every task session. Logs skill improvement opportunities to `1 \| Wiki/1.7 \| System/skill-observations/log.md` and stages proposed updates in `skill-updates/` for your review. Never installs anything automatically. Weekly review surfaces improvements across all skills. Created by [Eoghan Henn / rebelytics.com](https://rebelytics.com) — CC BY 4.0. |

---

## System & Workflow

| Skill | Command | What it does |
|-------|---------|-------------|
| **setup** | `run setup` | First-time onboarding. Reads answered `setup-questions.md` or voice transcript from `0 \| Raw/onboarding/`. Writes all 5 Reference files, seeds person pages in Network. |
| **check-health** | `run check-health` | Inspects sync sources, jobs, system logs, orphan wiki pages, and unprocessed Raw files. Returns Green / Yellow / Red report with recommended fixes. |
| **refresh-knowledge** | `run refresh-knowledge` | Processes new files in `0 \| Raw/` into wiki pages — extracts people, projects, decisions, open threads. Updates index and hot cache. |
| **sync-source** | `run sync-source` | Adds a new data source (Gmail, Slack, calendar, etc.). Creates sync script in `1.7 \| System/sync/` and health tracking file. |
| **weekly-review** | `run weekly-review` | Monday/Friday health check. Reads log, done tasks, system health, overdue touchpoints. Produces: what happened / stuck / coming / people overdue. |

---

## Task & Output

| Skill | Command | What it does |
|-------|---------|-------------|
| **create-task-card** | `run create-task-card` | Creates a task card in `1.2 \| Initiatives/backlog/` from a description. Writes the handoff prompt so Claude can act without follow-up. |
| **handoff-task** | `run handoff-task` | Executes a task card. Reads wiki context + comms.md, produces output in `1.6 \| Exports/`, moves card to done. |
| **review-output** | `run review-output` | Applies feedback on a reviewed output. Updates comms.md or preferences.md if feedback reveals durable preferences. Closes task card. |
| **researcher** | `run researcher` | Answers a question using wiki first, raw sources second, external last. Files substantial novel answers as Knowledge pages. |

---

## Writing & Communication

| Skill | Command | What it does |
|-------|---------|-------------|
| **write-draft** | `run write-draft` | Drafts any written communication in your voice. Always reads comms.md first. Saves to `1.6 \| Exports/drafts/`. |
| **avoid-ai-writing** | `run avoid-ai-writing` | Audits and rewrites text to remove AI-generated patterns — corporate filler, passive hedging, hollow transitions. Use before any output goes external. |
| **content-research-writer** | `run content-research-writer` | Collaborative writing for long-form content. Conducts research, adds citations, improves hooks, iterates on outlines section by section. Best for articles, briefs, and proposals. |
| **internal-comms** | `run internal-comms` | Writes internal communications in your company's format — status reports, leadership updates, project updates, incident reports, newsletters, FAQs. |
| **naming** | `run naming` | Names products, brands, projects, and tools. Metaphor-driven process that avoids generic AI names and produces memorable, meaningful options. |

---

## Meetings & People

| Skill | Command | What it does |
|-------|---------|-------------|
| **meeting-prep** | `run meeting-prep` | Pre-meeting brief. Reads attendee Network pages, recent Granola interactions, open tasks. Produces: attendees, last interaction, current state, asks, open threads, talking points. |
| **meeting-insights-analyzer** | `run meeting-insights-analyzer` | Deep analysis of meeting transcripts. Surfaces behavioral patterns — conflict avoidance, filler words, dominance, missed listening opportunities. Use after ingesting a Granola transcript. |

---

## Research & Data

| Skill | Command | What it does |
|-------|---------|-------------|
| **csv-data-summarizer** | `run csv-data-summarizer` | Analyzes CSV files with Python and pandas — summary stats, distributions, quick visualizations. Good for exported CRM data, pipeline reports, or any tabular source in `0 \| Raw/`. |
| **defuddle** | `run defuddle` | Strips a web page to clean markdown using the Defuddle CLI — removes nav, ads, and clutter. Use instead of raw WebFetch when feeding articles or docs into `0 \| Raw/`. |
| **firecrawl-search** | `run firecrawl-search` | Web search with full page content extraction — not just snippets. Use for research tasks that need full article content, not just titles and summaries. |
| **factory-floor** | `run factory-floor` | Startup coach mode. Trigger when working through founder questions: what to focus on, whether to build something, fundraising decisions, team issues, prioritization under uncertainty. |
| **product-manager-skills** | `run product-manager-skills` | PM toolkit — diagnoses SaaS metrics, critiques PRDs, plans roadmaps, runs discovery, designs PLG strategies. 40+ frameworks across 7 domains. |

---

## Obsidian & Vault

| Skill | Command | What it does |
|-------|---------|-------------|
| **obsidian-markdown** | `run obsidian-markdown` | Creates and edits Obsidian Flavored Markdown correctly — callouts, embeds, properties, tags. Use when vault formatting matters. |
| **obsidian-bases** | `run obsidian-bases` | Creates and edits Obsidian Bases (.base files) — database-like views with filters, formulas, and summaries. Use to build views across wiki pages by frontmatter (e.g., all active Initiatives, overdue Network contacts). |
| **json-canvas** | `run json-canvas` | Creates and edits Obsidian Canvas files (.canvas) — visual node/edge diagrams. Use for org charts, deal maps, strategy diagrams, and relationship visuals. |
| **file-organizer** | `run file-organizer` | Intelligently organizes files — finds duplicates, suggests better structures, automates cleanup. Use when `0 \| Raw/` or other areas need tidying. |

---

*The following 76 skills are from [Lenny Rachitsky's archive](https://github.com/RefoundAI/lenny-skills) — frameworks sourced from hundreds of operators, founders, and PMs.*

## Lenny — Strategy & Product

| Skill | Command | What it does |
|-------|---------|-------------|
| **ai-product-strategy** | `run ai-product-strategy` | Define AI product strategy — where to apply AI, build vs. buy decisions, evaluating model capabilities, avoiding common AI product mistakes. |
| **behavioral-product-design** | `run behavioral-product-design` | Apply behavioral science to product design — habit formation, reducing friction, motivation frameworks, persuasion without dark patterns. |
| **defining-product-vision** | `run defining-product-vision` | Create compelling product visions — writing vision statements, aligning teams, connecting day-to-day work to long-term direction. |
| **designing-growth-loops** | `run designing-growth-loops` | Design and optimize growth loops — viral mechanics, referral loops, retention loops, compounding acquisition. |
| **evaluating-new-technology** | `run evaluating-new-technology` | Assess emerging technologies — build vs. buy decisions, evaluating vendor claims, adoption timing, de-risking bets on new tools. |
| **evaluating-trade-offs** | `run evaluating-trade-offs` | Make better decisions between competing options — structuring trade-off analysis, naming assumptions, avoiding false binaries. |
| **measuring-product-market-fit** | `run measuring-product-market-fit` | Assess and achieve product-market fit — PMF signals, leading indicators, cohort analysis, when to pivot vs. persist. |
| **platform-strategy** | `run platform-strategy` | Design platform business strategies — marketplaces, ecosystems, API strategy, multi-sided network effects, developer platforms. |
| **planning-under-uncertainty** | `run planning-under-uncertainty` | Plan products and strategy when outcomes are unpredictable — scenario planning, betting frameworks, reversible vs. irreversible decisions. |
| **pricing-strategy** | `run pricing-strategy` | Design and optimize pricing — first-time pricing, freemium vs. paid, willingness to pay, packaging, pricing model transitions. |
| **prioritizing-roadmap** | `run prioritizing-roadmap` | Prioritize roadmaps and backlogs — sequencing features, resource allocation, handling stakeholder requests, competing priorities. Frameworks from 75 practitioners. |
| **problem-definition** | `run problem-definition` | Define problems clearly before jumping to solutions — scoping features, separating symptoms from root causes, writing crisp problem statements. |
| **product-led-sales** | `run product-led-sales` | Implement product-led sales motions — transitioning from pure PLG, identifying PQLs, building sales/product handoffs. |
| **product-operations** | `run product-operations` | Build and scale product operations — rituals, tooling, cross-team coordination, making product teams more effective at scale. |
| **product-taste-intuition** | `run product-taste-intuition` | Develop product taste and intuition — sharpening judgment, giving useful design feedback, recognizing quality, developing opinionated points of view. |
| **retention-engagement** | `run retention-engagement` | Improve retention and engagement — diagnosing churn, optimizing activation, building habit-forming products, engagement loops. |
| **scoping-cutting** | `run scoping-cutting` | Scope projects and cut features effectively — defining MVPs, negotiating scope, making cuts without killing outcomes. |
| **setting-okrs-goals** | `run setting-okrs-goals` | Set effective OKRs and goals — writing measurable objectives, aligning teams, avoiding vanity metrics, quarterly cadences. |
| **shipping-products** | `run shipping-products` | Ship products faster and with higher quality — launch planning, reducing cycle time, quality gates, post-launch learning. |
| **systems-thinking** | `run systems-thinking` | Think in systems and understand complex dynamics — feedback loops, unintended consequences, leverage points, multi-variable problems. |
| **working-backwards** | `run working-backwards` | Apply the working backwards methodology — writing press releases, FAQs, customer letters before building to sharpen problem clarity. |
| **writing-north-star-metrics** | `run writing-north-star-metrics` | Define North Star metrics — choosing primary success metrics, avoiding gaming, connecting metric to customer value and revenue. |
| **writing-prds** | `run writing-prds` | Write effective PRDs — documenting product requirements, preparing specs for engineering, defining what to build. Frameworks from 11 practitioners. |

---

## Lenny — Sales & Revenue

| Skill | Command | What it does |
|-------|---------|-------------|
| **building-sales-team** | `run building-sales-team` | Build and scale a sales organization — first sales hire, org design, quota setting, sales culture, scaling from founder-led sales. |
| **enterprise-sales** | `run enterprise-sales` | Navigate enterprise sales — closing large deals, managing complex buying committees, procurement, security reviews, multi-year contracts. |
| **founder-sales** | `run founder-sales` | Close first customers and build repeatable sales processes — outreach, discovery, demo, objection handling, closing as a non-sales founder. |
| **marketplace-liquidity** | `run marketplace-liquidity` | Build and manage marketplace liquidity — solving cold start, supply/demand balancing, geographic expansion, liquidity metrics. |
| **partnership-bd** | `run partnership-bd` | Build strategic partnerships and BD deals — identifying the right partners, structuring deals, negotiating terms, making partnerships work post-signing. |
| **sales-compensation** | `run sales-compensation` | Design sales compensation plans — base/variable splits, quota setting, accelerators, first rep comp, restructuring underperforming plans. |
| **sales-qualification** | `run sales-qualification` | Qualify sales leads effectively — MEDDIC, ICP scoring, disqualifying early, reducing time on bad-fit deals. |

---

## Lenny — Marketing & Brand

| Skill | Command | What it does |
|-------|---------|-------------|
| **brand-storytelling** | `run brand-storytelling` | Craft compelling brand narratives — brand strategy, origin stories, mission/vision/values, making a brand feel human and memorable. |
| **community-building** | `run community-building` | Build and grow product communities — starting from zero, scaling engagement, community formats, measuring health, avoiding ghost towns. |
| **competitive-analysis** | `run competitive-analysis` | Understand and respond to competition — competitor research, positioning against alternatives, win/loss analysis, avoiding competitive obsession. |
| **content-marketing** | `run content-marketing` | Build content marketing strategies — SEO, editorial calendars, distribution, measuring content ROI, building an audience. |
| **launch-marketing** | `run launch-marketing` | Plan and execute product launches — launch sequencing, channel selection, messaging, press, community activation, measuring launch success. |
| **media-relations** | `run media-relations` | Build journalist relationships and get press coverage — pitching, press releases, embargo strategy, responding to inbound, building long-term media relationships. |
| **positioning-messaging** | `run positioning-messaging` | Craft product positioning and messaging — differentiation, ICP-specific messaging, testing messages, updating positioning as market evolves. |

---

## Lenny — People & Org

| Skill | Command | What it does |
|-------|---------|-------------|
| **building-team-culture** | `run building-team-culture` | Build and maintain strong team culture — defining values, creating norms, culture at scale, remote culture, fixing toxic dynamics. |
| **coaching-pms** | `run coaching-pms` | Develop and coach product managers — creating development plans, giving effective PM feedback, identifying PM strengths and gaps. |
| **conducting-interviews** | `run conducting-interviews` | Conduct effective hiring interviews — designing interview loops, crafting questions, calibrating across interviewers, avoiding bias. |
| **cross-functional-collaboration** | `run cross-functional-collaboration` | Work effectively across functions — PM-engineering relationships, navigating design/data/marketing, resolving cross-functional conflict. |
| **delegating-work** | `run delegating-work` | Delegate effectively — deciding what to delegate, setting up for success without micromanaging, building team ownership. |
| **evaluating-candidates** | `run evaluating-candidates` | Make better hiring decisions — structured evaluation, reference checks, calibrating across interviewers, avoiding false positives. |
| **having-difficult-conversations** | `run having-difficult-conversations` | Navigate tough feedback, performance conversations, and conflict — preparation, delivery, receiving defensiveness, following up. |
| **managing-timelines** | `run managing-timelines` | Set and hit realistic deadlines — project planning, buffer setting, communicating slippage, recovering when behind. |
| **managing-up** | `run managing-up` | Work effectively with managers and executives — setting expectations, communicating status, influencing without authority, navigating difficult leadership. |
| **onboarding-new-hires** | `run onboarding-new-hires` | Onboard new team members effectively — 30/60/90 plans, context transfer, setting early wins, common onboarding mistakes. |
| **organizational-design** | `run organizational-design` | Design effective organizational structures — team topologies, spans of control, when to reorganize, avoiding reorg fatigue. |
| **organizational-transformation** | `run organizational-transformation` | Transform organizations toward modern product practices — shifting from project to product thinking, building product culture, change management. |
| **stakeholder-alignment** | `run stakeholder-alignment` | Align stakeholders and get buy-in — mapping stakeholders, pre-wiring decisions, handling opposition, making alignment stick. |
| **writing-job-descriptions** | `run writing-job-descriptions` | Write effective job descriptions — attracting the right candidates, avoiding requirements inflation, writing for clarity not credentials. |

---

## Lenny — Career & Leadership

| Skill | Command | What it does |
|-------|---------|-------------|
| **building-a-promotion-case** | `run building-a-promotion-case` | Get promoted — building the case, documenting impact, timing conversations, navigating leveling frameworks. |
| **career-transitions** | `run career-transitions` | Navigate career changes and pivots — evaluating new roles, making the case for a non-linear move, managing risk in transitions. |
| **energy-management** | `run energy-management` | Manage energy for sustained performance — avoiding burnout, recovery practices, protecting deep work, recognizing depletion early. |
| **finding-mentors-sponsors** | `run finding-mentors-sponsors` | Build relationships with mentors and sponsors — finding the right people, making asks that work, maintaining relationships over time. |
| **giving-presentations** | `run giving-presentations` | Create and deliver compelling presentations — structure, storytelling, slide design, handling Q&A, executive presentations. |
| **managing-imposter-syndrome** | `run managing-imposter-syndrome` | Work through feelings of inadequacy and self-doubt — recognizing patterns, reframing, building sustainable confidence. |
| **negotiating-offers** | `run negotiating-offers` | Negotiate job offers and compensation — salary, equity, leveling, counter-offers, negotiating without burning bridges. |
| **personal-productivity** | `run personal-productivity` | Manage time and tasks more effectively — prioritization systems, reducing overwhelm, protecting focus, sustainable output. |

---

## Lenny — Research & User Insights

| Skill | Command | What it does |
|-------|---------|-------------|
| **analyzing-user-feedback** | `run analyzing-user-feedback` | Synthesize and act on customer feedback — NPS analysis, qualitative coding, separating signal from noise, turning feedback into decisions. |
| **conducting-user-interviews** | `run conducting-user-interviews` | Run better user research interviews — question design, avoiding leading questions, extracting insight from vague answers, synthesis. |
| **designing-surveys** | `run designing-surveys` | Design effective surveys — question wording, scale design, avoiding bias, sample sizes, NPS and CSAT best practices. |
| **dogfooding** | `run dogfooding` | Implement effective dogfooding practices — getting teams to use their own products, capturing internal feedback, making dogfooding systematic. |
| **usability-testing** | `run usability-testing` | Conduct effective usability testing — test planning, moderated vs. unmoderated, task design, analyzing results, acting on findings. |
| **user-onboarding** | `run user-onboarding` | Design effective product onboarding — first-user experiences, activation flows, reducing time-to-value, onboarding for different user types. |

---

## Lenny — Process & Meetings

| Skill | Command | What it does |
|-------|---------|-------------|
| **post-mortems-retrospectives** | `run post-mortems-retrospectives` | Run effective post-mortems and retrospectives — blameless culture, root cause analysis, making retros actionable, following up on commitments. |
| **running-decision-processes** | `run running-decision-processes` | Run effective decision-making processes — DACI/RACI, decision logs, avoiding decision paralysis, getting to a clear outcome. |
| **running-design-reviews** | `run running-design-reviews` | Run effective design reviews and critiques — giving useful design feedback, structuring reviews, separating taste from requirements. |
| **running-effective-1-1s** | `run running-effective-1-1s` | Run effective one-on-ones — agenda formats, building trust over time, using 1:1s for coaching vs. status, handling difficult 1:1s. |
| **running-effective-meetings** | `run running-effective-meetings` | Run more effective meetings — reducing meeting load, improving meeting culture, getting decisions made, post-meeting accountability. |
| **running-offsites** | `run running-offsites` | Plan and run effective team offsites — agenda design, choosing activities, facilitating strategy sessions, making outcomes stick. |
| **team-rituals** | `run team-rituals` | Design effective team rituals — standups, demos, planning ceremonies, async rituals, killing rituals that have outlived their purpose. |
| **written-communication** | `run written-communication` | Communicate more effectively in writing — memos, strategy docs, announcements, making writing clear, concise, and persuasive. Frameworks from 38 practitioners. |

---

## Lenny — Startup

| Skill | Command | What it does |
|-------|---------|-------------|
| **fundraising** | `run fundraising` | Raise capital and build investor relationships — pitch decks, investor outreach, due diligence, term sheets, managing the process. |
| **startup-ideation** | `run startup-ideation` | Generate and evaluate startup ideas — brainstorming, idea validation, evaluating founder-market fit, finding unique market opportunities. |
| **startup-pivoting** | `run startup-pivoting` | Decide when and how to pivot — recognizing pivot signals, types of pivots, maintaining team morale, communicating the pivot to investors. |

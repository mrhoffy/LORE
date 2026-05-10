# Avoid AI Writing — Audit & Rewrite

Full skill documentation for detecting and removing AI-generated writing patterns.

---

## Overview

This skill identifies "AI-isms"—machine-generated text markers—and either flags them for review (detect mode) or rewrites content to remove them (rewrite mode, default).

**Modes:**
- **Rewrite** (default): Identify patterns, fix them, show what changed
- **Detect**: Flag only; let the writer decide what to fix

Trigger detect mode with: "detect," "flag only," "audit only," "scan," or similar phrasing.

---

## What to Remove

### Formatting issues
- **Em dashes**: Replace with commas, periods, or parentheses. Max: 1 per 1,000 words
- **Bold overuse**: One per major section maximum; restructure sentences instead
- **Emoji in headers**: Remove entirely (social posts: 1–2 at line end only)
- **Excessive bullets**: Convert to prose unless genuinely list-like

### Sentence structure problems
- **"It's not X — it's Y"**: Rewrite as direct positive statement
- **Hollow intensifiers**: Cut "genuine," "real," "truly," "quite frankly," "to be honest," "let's be clear"
- **Vague endorsements**: Replace "worth reading," "worth your time," etc. with specific reasons
- **Hedging**: Remove "perhaps," "could potentially," "it's important to note that"
- **Missing bridges**: Add connective tissue between disconnected paragraphs
- **Compulsive rule of three**: Vary groupings; limit to one per piece

### Tier 1 vocabulary (always replace)

Replace these words immediately—they appear 5–20x more often in AI text:

| Replace | With |
|---------|------|
| delve / delve into | explore, dig into, look at |
| landscape (metaphor) | field, space, industry |
| tapestry | (describe actual complexity) |
| realm | area, field, domain |
| paradigm | model, approach, framework |
| embark | start, begin |
| beacon | (rewrite entirely) |
| testament to | shows, proves, demonstrates |
| robust | strong, reliable, solid |
| comprehensive | thorough, complete, full |
| cutting-edge | latest, newest, advanced |
| leverage (verb) | use |
| pivotal | important, key, critical |
| underscores | highlights, shows |
| meticulous / meticulously | careful, detailed, precise |
| seamless / seamlessly | smooth, easy |
| game-changer / game-changing | describe what specifically changed |
| hit differently | (state what changed, or cut) |
| utilize | use |
| watershed moment | turning point, shift |
| nestled | is located, sits, is in |
| vibrant | (describe what makes it active, or cut) |
| thriving | growing, active (or cite a number) |
| showcasing | showing, demonstrating |
| deep dive / dive into | look at, examine, explore |
| unpack / unpacking | explain, break down |
| bustling | busy, active |
| intricate / intricacies | complex, detailed |
| complexities | (name actual complexities) |
| ever-evolving | changing, growing |
| enduring | lasting, long-running |
| daunting | hard, difficult |
| holistic / holistically | complete, full, whole |
| actionable | practical, useful, concrete |
| impactful | effective, significant |
| learnings | lessons, findings, takeaways |
| thought leader / thought leadership | expert, authority |
| best practices | what works, proven methods |
| at its core | (cut—just state the thing) |
| synergy / synergies | (describe actual combined effect) |
| interplay | relationship, connection |
| in order to | to |
| due to the fact that | because |
| serves as | is |
| features (verb) | has, includes |
| boasts | has |
| presents (inflated) | is, shows, gives |
| commence | start, begin |
| ascertain | find out, determine, learn |
| endeavor | effort, attempt, try |
| keen (as intensifier) | interested, eager |
| symphony (metaphor) | (describe actual coordination) |
| embrace (metaphor) | adopt, accept, use, switch to |

### Tier 2 vocabulary (flag when 2+ appear in same paragraph)

These are individually fine but signal AI writing in clusters:

| Replace | With |
|---------|------|
| harness | use, take advantage of |
| navigate / navigating | work through, handle, deal with |
| foster | encourage, support, build |
| elevate | improve, raise, strengthen |
| unleash | release, enable, unlock |
| streamline | simplify, speed up |
| empower | enable, let, allow |
| bolster | support, strengthen |
| spearhead | lead, drive, run |
| resonate / resonates with | connect with, appeal to |
| revolutionize | change, transform, reshape |
| facilitate / facilitates | enable, help, allow, run |
| underpin | support, form basis of |
| nuanced | specific, subtle, detailed |
| crucial | important, key, necessary |
| multifaceted | (describe actual facets) |
| ecosystem (metaphor) | system, community, network |
| myriad | many, numerous |
| plethora | many, a lot of |
| encompass | include, cover, span |
| catalyze | start, trigger, accelerate |
| reimagine | rethink, redesign, rebuild |
| galvanize | motivate, rally, push |
| augment | add to, expand, supplement |
| cultivate | build, develop, grow |
| illuminate | clarify, explain, show |
| elucidate | explain, clarify, spell out |
| juxtapose | compare, contrast |
| paradigm-shifting | (describe what shifted) |
| transformative / transformation | (describe what changed) |
| cornerstone | foundation, basis, key part |
| paramount | most important, top priority |
| poised (to) | ready, set, about to |
| burgeoning | growing, emerging |
| nascent | new, early-stage, emerging |
| quintessential | typical, classic, defining |
| overarching | main, central, broad |
| underpinning / underpinnings | basis, foundation |

### Tier 3 vocabulary (flag at high density—3%+ of total words)

Only flag when saturated. Replace vague praise with specifics: numbers, comparisons, examples.

| Word | Action |
|------|--------|
| significant / significantly | Replace with specifics |
| innovative / innovation | Describe what's actually new |
| effective / effectively | Say how or cite a metric |
| dynamic / dynamics | Name actual forces or changes |
| scalable / scalability | Describe what scales to what |
| compelling | Say why it compels |
| unprecedented | Name precedent it breaks |
| exceptional / exceptionally | Cite what makes it exception |
| remarkable / remarkably | Say what's worth remarking on |
| sophisticated | Describe the sophistication |
| instrumental | Say what role it played |
| world-class / state-of-the-art | Cite benchmark or comparison |

### Template phrases to avoid

Slot-fill constructions where a noun/adjective could swap in and the phrase still works:

- "a [adjective] step towards [adjective] AI infrastructure" → describe specific capability
- "a [adjective] step forward for [noun]" → say what actually changed
- "Whether you're [X] or [Y]" → pick actual audience; "Whether you're a startup or enterprise" means "everyone"
- "I recently had the pleasure of [verb]-ing" → just say what happened: "I talked to," "I read"

### Transition phrases to remove or rewrite

- **Moreover / Furthermore / Additionally** → restructure for obvious connection or use "and," "also"
- **In today's [X] / In an era where** → cut or state specific context
- **It's worth noting that / Notably** → just state the fact
- **Here's what's interesting / Here's what caught my eye** → let content signal importance
- **In conclusion / In summary / To summarize** → conclusion should be obvious
- **When it comes to** → talk about thing directly
- **At the end of the day** → cut
- **That said / That being said** → use "but," "yet," "however" instead

### Structural issues

- **Uniform paragraph length**: Vary deliberately. Include 1–2 sentence and longer paragraphs
- **Formulaic openings**: Lead with news/insight, not broad context ("In the rapidly evolving world of...")
- **Suspiciously clean grammar**: Preserve personality. Fragments, sentence-starting "And/But," comma splices for effect are human

### Significance inflation

Phrases like "marking a pivotal moment" or "a watershed moment for the industry" overstate routine events. State what happened; let reader judge.

If the sentence works after removing inflation, delete it.

### Copula avoidance

AI substitutes fancy verbs for "is" and "has": "serves as," "features," "boasts," "presents," "represents."

Default to "is" or "has" unless a more specific verb adds genuine meaning.

### Synonym cycling

AI rotates synonyms to avoid repetition: "developers… engineers… practitioners… builders" in same paragraph.

Human writers repeat the clearest word. If the word is right, keep all instances.

### Vague attributions

"Experts believe," "Studies show," "Research suggests" without naming source.

Either cite specific source or drop attribution and state claim directly.

### Filler phrases

Strip mechanical padding:
- "It is important to note that" → (just state it)
- "In terms of" → (rewrite)
- "The reality is that" → (cut or state claim)

### Generic conclusions

"The future looks bright," "Only time will tell," "One thing is certain," "As we move forward."

Cut. If closing needed, make it specific to argument.

### Chatbot artifacts

Remove entirely:
- "I hope this helps!", "Certainly!", "Absolutely!", "Great question!"
- "Feel free to reach out," "Let me know if you need anything else"
- "In this article, we will explore…" or "Let's dive in!"

### "Let's" constructions

"Let's explore," "Let's take a look," "Let's break this down" delay the actual point.

Start with the point. "Let's" is filler pretending to be collaboration.

### Notability name-dropping

"cited in The New York Times, BBC, Financial Times, and The Hindu" manufactures credibility through pileup.

One specific reference with context beats four name-drops: "In a 2024 NYT interview, she argued..."

### Superficial -ing analyses

Strings of present participles used as pseudo-analysis: "symbolizing the region's commitment, reflecting decades of investment, and showcasing a new era."

These say nothing. Replace with specific facts or cut.

### Promotional language

"nestled within the breathtaking foothills," "a vibrant hub of innovation," "a thriving ecosystem."

Replace with plain description: "is a town in the Gonder region," "has 12 startups."

If you wouldn't say it in conversation, cut it.

### Formulaic challenges

"Despite challenges, [subject] continues to thrive" or "While facing headwinds, [subject] remains resilient."

Non-statement. Name the actual challenge and response, or cut.

### False ranges

"from the Big Bang to dark matter," "from ancient civilizations to modern startups."

Sound sweeping but say nothing. List actual topics or pick the one that matters.

### Inline-header lists

Bullets where each item starts with bold header that repeats itself: "**Performance:** Performance improved by..."

Strip bold header. Write point directly. If headers needed, use paragraphs.

### Title case headings

"Strategic Negotiations And Key Partnerships" instead of "Strategic negotiations and key partnerships."

Use sentence case for subheadings. Title case for main title only.

### Cutoff disclaimers

"While specific details are limited," "As of my last update," "I don't have access to real-time data."

Model limitations leaking into prose. Either find info or remove hedge. Never admit the writer didn't look something up.

### Novelty inflation

AI treats established concepts as inventions: "He introduced a term," "She coined the phrase," "a concept nobody's naming."

Two problems: risky if the concept already has coverage, and sounds promotional.

Fix: describe what the person *did with* the concept: "Michel walked through how context poisoning works in practice" vs. "Michel introduced a term I hadn't heard before."

Also flag: "the failure mode nobody's naming," "a problem nobody talks about," "the insight everyone's missing." These are engagement-bait framings.

### Emotional flatline

"What surprised me most," "I was fascinated to discover," "What struck me was," "I was excited to learn."

Tell-don't-show. If something is genuinely surprising, the reader should feel it from content, not announcement.

Also: "hit differently" / "hits different." Trendy colloquialism as shortcut to sound relatable without earning the beat.

Fix: if you claim emotion, the writing should earn it. Otherwise cut and present directly.

### False concession structure

"While X is impressive, Y remains a challenge" or "Although X has made strides, Y is still an open question."

Both halves are vague. Make concession specific or pick a side.

### Rhetorical question openers

"But what does this mean for developers?" / "So why should you care?" / "What's next?"

AI stalls before the point. If you know the answer, just say it.

### Parenthetical hedging

"(and, increasingly, Z)" / "(or, more precisely, Y)" / "(and perhaps more importantly, W)"

Insert asides to sound nuanced without committing. If aside matters, give it own sentence. If not, cut.

### Numbered list inflation

"Three key takeaways" / "Five things to know" / "Here are the top seven."

Only use numbered lists when content genuinely has that many discrete parallel items.

If padding to hit a number, the list shouldn't exist.

### Reasoning chain artifacts

"Let me think step by step," "Breaking this down," "To approach this systematically," "Step 1:," "Here's my thought process."

Scaffolding from chain-of-thought reasoning leaking into prose. Reader doesn't need to see it.

State conclusion, then evidence.

### Sycophantic tone

"Great question!", "Excellent point!", "You're absolutely right!", "That's a really insightful observation."

Conversational rewards from chat interfaces. Remove entirely.

### Acknowledgment loops

"You're asking about," "The question of whether," "To answer your question," "That's a great question. The..."

AI restates prompt before answering. Pure filler. The reader knows what they asked.

Just answer.

### Confidence calibration phrases

"It's worth noting that," "Interestingly," "Surprisingly," "Importantly," "Significantly," "Notably," "Certainly," "Undoubtedly."

AI signals how reader should feel instead of letting fact speak.

"Here's what's interesting," "Here's the interesting part" pre-interprets importance.

One "notably" in 2,000 words: fine. Three in 500 words: AI-style stacking. Flag by density.

### Excessive structure

- More than 3 headings in under 300 words: almost always AI trying to look organized
- 8+ bullet points in under 200 words: should be paragraph, not list
- Formulaic section headers ("Overview," "Key Points," "Summary," "Conclusion," "Introduction"): default AI scaffolding

Use headers that tell reader something specific.

### Rhythm and uniformity

**Structure is the #1 detection signal.** Consistent sentence construction, uniform pacing, symmetrical phrasing are harder to mask than vocabulary swaps.

If you fix every word from the list but leave rhythm untouched, text still reads as AI.

- **Sentence length uniformity**: If most sentences are 15–25 words, sounds robotic. Mix short (3–8) with long (20+). Fragments work. Questions break monotony.
- **Paragraph length uniformity**: If every paragraph is 3–5 sentences same size, vary deliberately. Some one sentence; some longer.
- **Vocabulary repetition vs. synonym cycling**: AI either repeats mechanically or cycles conspicuously. Human writers repeat when right and vary naturally—no formula.
- **Read-aloud test**: If text sounds like text-to-speech engine, it's probably too uniform. Human writing has rhythm that resists robotic delivery.
- **Missing first-person perspective**: Where appropriate, writer should have opinions, preferences, reactions. AI is relentlessly neutral. Absence of "I think," "in my experience," or stated preference is itself an AI tell.
- **Over-polishing**: Aggressively editing out every irregularity pushes human writing *toward* AI statistical profiles. Natural disfluency, idiosyncratic word choices, uneven pacing keep text out of AI-generated classification. Don't sand away personality. This skill should make writing more human, not less—max strictness risks creating the uniformity you're fixing.

### When to rewrite from scratch vs. patch

If text has 5+ flagged vocabulary hits across multiple categories, 3+ pattern categories triggered, and uniform sentence/paragraph length, patching won't fix it—structure itself is AI.

Advise full rewrite: state core point in one sentence, rebuild from there.

---

## Severity tiers

Not all AI-isms equal. Prioritize:

### P0 — Credibility killers (fix immediately)
- Cutoff disclaimers ("As of my last update")
- Chatbot artifacts ("I hope this helps!", "Great question!")
- Vague attributions without sources ("Experts believe")
- Significance inflation on routine events

### P1 — Obvious AI smell (fix before publishing)
- Word-list violations (delve, leverage, harness, etc.)
- Template phrases and slot-fill constructions
- "Let's" transition openers
- Synonym cycling within paragraph
- Formulaic openings ("In the rapidly evolving world of...")
- Bold overuse
- Em dash frequency (above 1 per 1,000 words)

### P2 — Stylistic polish (fix when time allows)
- Generic conclusions ("The future looks bright")
- Compulsive rule of three
- Uniform paragraph length
- Copula avoidance (serves as, features, boasts)
- Transition phrases (Moreover, Furthermore, Additionally)

Quick passes: P0+P1. Full audit: all three.

---

## Self-reference escape hatch

When writing *about* AI writing patterns, quoted examples are exempt from flagging. Text in quotation marks, code blocks, or marked as illustrative shouldn't be rewritten.

Only flag patterns in author's own prose, not in cited examples.

---

## Context profiles

Optional context hint adjusts rule strictness. If unspecified, auto-detect from cues.

### Profiles

- **`linkedin`** — Short-form social. Punchy fragments; visual formatting matters
- **`blog`** — Default. Standard long-form prose. All rules at full strength
- **`technical-blog`** — Long-form with code, architecture, APIs. Technical terms get pass
- **`investor-email`** — High-trust audience. Tighten everything; promotional language biggest risk
- **`docs`** — Documentation, READMEs, guides. Clarity over voice
- **`casual`** — Slack, internal notes, quick replies. Only catch worst offenders

### Tolerance matrix

Rules not listed apply at full strength across all profiles.

| Rule | linkedin | blog | technical-blog | investor-email | docs | casual |
|------|----------|------|----------------|----------------|------|--------|
| Em dashes | relaxed (2/post OK) | strict | strict | strict | relaxed | skip |
| Bold overuse | relaxed (bold hooks OK) | strict | strict | strict | relaxed | skip |
| Emoji in headers | relaxed (1-2 end-of-line OK) | strict | strict | strict | skip | skip |
| Excessive bullets | skip (lists work on LinkedIn) | strict | relaxed (technical OK) | strict | skip (lists are docs) | skip |
| Hedging | strict | strict | relaxed ("may" accurate) | strict | relaxed | skip |
| Word table (full) | strict | strict | **partial** (see below) | strict | relaxed | P0 only |
| Promotional language | relaxed (some sell expected) | strict | strict | **extra strict** | strict | skip |
| Significance inflation | strict | strict | strict | **extra strict** | relaxed | skip |
| Copula avoidance | skip | strict | relaxed | strict | skip | skip |
| Uniform paragraph length | skip (short-form) | strict | strict | strict | relaxed | skip |
| Numbered list inflation | relaxed | strict | relaxed | strict | skip | skip |
| Rhetorical questions | relaxed (1 as hook OK) | strict | strict | strict | strict | skip |
| Transition phrases | skip (short-form) | strict | strict | strict | relaxed | skip |
| Generic conclusions | skip | strict | strict | **extra strict** | skip | skip |

**Technical-blog word table exceptions:** These have legitimate technical meaning; don't flag in technical context: `robust`, `comprehensive`, `seamless`, `ecosystem`, `leverage` (actual platform leverage/APIs), `facilitate`, `underpin`, `streamline`.

Still flag: `delve`, `tapestry`, `beacon`, `embark`, `testament to`, `game-changer`, `harness`.

**"Extra strict"**: Flag even borderline instances. In investor emails, one "thriving ecosystem" undermines everything.

**"Skip"**: Rule doesn't apply or isn't worth edit.

### Auto-detection cues

Infer context from signals:

| Signal | Inferred context |
|--------|-----------------|
| Under 300 words + hashtags or mentions | `linkedin` |
| Code blocks, API references, technical architecture | `technical-blog` |
| Salutation ("Hi [name]", "Dear") + investor/fundraising language | `investor-email` |
| Step-by-step instructions, parameter docs, README structure | `docs` |
| No strong signals | `blog` (safest default) |

If auto-detection feels wrong, state which profile and why. User can override.

---

## Output format

### Rewrite mode (default)

Return response in four sections:

**1. Issues found**
Bulleted list of every AI-ism. Quote offending text.

**2. Rewritten version**
Full rewritten content. Preserve original structure, intent, all specific details. Change only what guidelines require.

**3. What changed**
Brief summary of major edits. Not every word, just meaningful changes.

**4. Second-pass audit**
Re-read rewritten version from section 2. Identify remaining AI tells—recycled transitions, lingering inflation, copula avoidance, filler, anything else from categories above.

Fix inline. Note what changed. If clean, say so.

### Detect mode

Return response in two sections:

**1. Issues found**
Bulleted list of every AI-ism. Group by severity (P0, P1, P2).

**2. Assessment**
For each flag, note whether it's clear problem or judgment call. Some AI patterns are effective—uniform paragraph length is problem; a well-placed "however" isn't.

Call out flags to definitely fix vs. worth second look. If clean, say so.

---

## Tone calibration

Goal: writing that sounds human-written. Direct. Specific. Demonstrates confidence without asserting it.

Five principles for human rewrites:

1. **Vary sentence length** — mix short with long. Fragments fine.
2. **Be concrete** — replace vague claims with numbers, names, dates, examples.
3. **Have a voice** — where appropriate, use first person, state preferences, show reactions.
4. **Cut the neutrality** — humans have opinions. If piece takes position, take it.
5. **Earn your emphasis** — don't tell reader something's interesting. Make it interesting.

If original is already strong, say so. Only make necessary cuts. Don't over-edit for sake of it.

Replacement table provides defaults, not mandates. If flagged word is clearly right in context, preserve it.

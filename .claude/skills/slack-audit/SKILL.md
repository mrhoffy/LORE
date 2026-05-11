---
name: slack-audit
description: Audits a Slack (or Teams) channel list and produces a cleaned-up taxonomy with channel naming conventions, explicit norms for what belongs where, and a specific list of channels to create, rename, merge, or archive. Use this skill when the user says "our Slack is out of control", "we have too many channels", "nobody knows where to post things", "help me clean up our Slack", or when they share a channel list and want recommendations. Always produce specific, actionable recommendations — not just framework advice.
---

# Slack Channel Audit

Audits and redesigns a Slack (or Teams) channel structure against the four-layer communication stack, produces a specific channel taxonomy with naming conventions and content norms, and gives actionable recommendations for what to create, rename, merge, or archive. Based on the Best Business Practices research on communication architecture.

## Source references
- Best Business Practices research: Section 5, "Communication architecture"
- Best Business Practices research: Section 5, "Institutional memory"
- GitLab handbook — Slack channel conventions and async-first norms
- Basecamp, *A Shape Up* — on communication defaults and async culture

---

## The four-layer communication stack — the diagnostic frame

Slack's fundamental problem is that everything collapses into one layer. The fix is explicit norms for what belongs where:

| Layer | Tool | Purpose | Durability |
|-------|------|---------|-----------|
| **Handbook / wiki** | Obsidian, Notion, Confluence | Durable truth: principles, decisions, specs, policies, runbooks | Permanent |
| **Issue tracker** | Linear, Jira, GitHub Issues | All work: bugs, features, projects, OKR tracking | Semi-permanent |
| **Email / long-form async** | Email, Loom | Announcements, external comms, decisions needing receipt | Weeks-months |
| **Slack** | Slack / Teams | Ephemeral coordination: quick questions, social, real-time incidents | Hours-days |

**The critical rule: Slack is not a decision medium.** Any decision made in Slack must be written to the tracker or a doc within hours. Slack should be treated as if it disappears tomorrow — because eventually, it might.

---

## Intake questions

**Required:**
1. **Channel list** — Share the list of channels. Any format works — a Slack export, a copy-paste list, a screenshot description.
2. **Company size / stage** — How many people use this Slack? (Determines appropriate complexity of the taxonomy.)
3. **What's broken** — What specifically is wrong? (Can't find things? Too many notifications? Strategic discussions buried in noise? No one knows where to post? Bot notifications flooding channels?)
4. **Existing norms** — Are there any existing conventions people actually follow? Preserve what's working.
5. **Key functions / teams** — Which teams, projects, or functions need dedicated spaces?

**Useful if available:**
- Current notification settings or complaints about notification overload
- Which channels have the most vs. least activity
- Any channels the user knows should be killed but haven't been

---

## Channel taxonomy — the standard naming conventions

These are the canonical prefix families. Every channel belongs to one prefix family. The prefix makes the architecture self-documenting — someone new to the org can infer what's in a channel from its name alone.

| Prefix | Purpose | Examples |
|--------|---------|---------|
| `team-` | A specific team's internal channel | `team-eng`, `team-sales`, `team-product`, `team-cs` |
| `proj-` | A specific project or initiative, time-bound | `proj-q3-launch`, `proj-data-migration`, `proj-series-b` |
| `topic-` | A subject-matter channel for cross-functional discussion | `topic-security`, `topic-analytics`, `topic-pricing` |
| `inc-` | Incidents — active and past | `inc-2026-05-10-payment-outage` |
| `help-` | Support / Q&A channels (searchable by function) | `help-legal`, `help-it`, `help-finance` |
| `announce-` | One-way broadcast channels (company, leadership) | `announce-company`, `announce-product` |
| `social-` | Informal / social channels | `social-random`, `social-watercooler`, `social-pets` |
| `ext-` | External (shared channels with customers/vendors) | `ext-[customer-name]` |
| `bot-` | Automated notifications only — bots routed here, not into team channels | `bot-github`, `bot-datadog`, `bot-jira` |

---

## Channel content norms — the other half of the design

Naming conventions alone don't fix Slack. The content norms are equally important. For each channel family, explicit norms should be posted in the channel topic or pinned.

| Channel type | Post here | Don't post here |
|-------------|----------|----------------|
| `team-*` | Internal coordination, quick questions, team news | Project status that belongs in `proj-*`; announcements that belong in `announce-*` |
| `proj-*` | All updates for a specific project | General team chat |
| `topic-*` | Subject-matter discussion, questions on this domain | Project-specific updates (those go in `proj-*`) |
| `inc-*` | Real-time incident coordination only | Post-incident analysis (goes in the tracker or post-mortem doc) |
| `help-*` | Questions and answers on this function | Discussion (keep to Q&A format) |
| `announce-*` | Announcements only; replies in thread only | Discussion, questions, reactions |
| `bot-*` | Automated notifications | Human messages |

---

## Key Slack norms to codify (for any audit output)

These should be posted in the company handbook or pinned in `announce-company`:

1. **Default to threads.** Any reply to a message goes in the thread, not the channel. This is the single highest-impact norm for reducing noise.
2. **Decisions don't live in Slack.** If a decision is made in a thread, it gets written to the tracker or a doc within the same day. Link the doc in the thread.
3. **`@channel` and `@here` are reserved for urgent AND important.** Overuse desensitizes people. Define what "urgent" means.
4. **Channels are default-public.** Private channels for genuinely sensitive content only (HR, legal, comp). Private by default is an anti-pattern — it creates shadow communication and organizational silos.
5. **Response SLAs stated explicitly.** "No expectation of reply under 24 hours unless marked with 🔴 or posted in `inc-*`." Unstated SLAs create anxiety and always-on culture.
6. **Route bots to `bot-*` channels.** GitHub, Datadog, Jira, Linear notifications belong in dedicated bot channels — not in team channels where they create noise and train people to ignore everything.

---

## Workflow

### Step 1: Classify every channel
For each channel, assign it to one of the prefix families — or flag it as "unclassified" and propose what to do with it.

### Step 2: Identify the pathologies
| Pathology | Signs | Fix |
|-----------|-------|-----|
| **No naming convention** | Channels named `general`, `marketing`, `random`, `stuff`, `misc` | Apply prefix taxonomy |
| **Bots in team channels** | `team-eng` full of GitHub notifications | Move to `bot-github` |
| **Duplicate channels** | `#sales` and `#team-sales` and `#sales-team` | Merge; deprecate two |
| **Project channels not time-bound** | `proj-feature-x` from 2023 still active | Archive completed projects |
| **No announce channel** | Announcements buried in `general` | Create `announce-company` with reply-in-thread norm |
| **No help channels** | People DM specific people for legal/IT/finance questions | Create `help-legal`, `help-it`, etc. |
| **Everything in DMs** | Knowledge isn't searchable | Encourage threads in public channels; DMs for personal |
| **Too many social channels** | 12 social channels, all low-activity | Consolidate to 2–3 |

### Step 3: Build the recommended taxonomy
Produce a specific list: channels to keep, channels to rename, channels to merge, channels to archive, and channels to create new.

### Step 4: Draft the content norms
For each channel family, write the norm that goes in the channel description or topic.

---

## Output format

```markdown
# Slack Channel Audit — [Company] — [Date]

## Summary
- **Channels audited:** [N]
- **Primary pathology:** [One sentence on the main problem]
- **Immediate wins:** [2–3 highest-impact changes]

---

## Channel-by-channel assessment

| Current channel | Classification | Status | Recommendation |
|----------------|----------------|--------|---------------|
| `#general` | announce-company | ⚠️ Wrong name, wrong norms | Rename to `announce-company`; post reply-in-thread norm |
| `#engineering` | team-eng | ⚠️ Has bot noise | Rename to `team-eng`; move bot alerts to `bot-github` |
| `#random` | social-random | ✅ Keep | Rename to `social-random` for clarity |
| `#proj-2023-migration` | proj-* | ❌ Archive | Project complete; archive |
| `#marketing-and-brand` | team-marketing | ⚠️ Rename | → `team-marketing` |

**Key:**
- ✅ Keep (minor rename recommended)
- ⚠️ Needs change
- ❌ Archive or merge

---

## Channels to create

| New channel | Purpose | Content norm (for topic/description) |
|-------------|---------|--------------------------------------|
| `announce-company` | Company-wide broadcasts | "Announcements only. Reply in thread. @channel for urgent-and-important only." |
| `bot-github` | GitHub notifications | "Automated only. No human messages." |
| `help-legal` | Legal questions | "Post legal questions here. [Legal DRI] monitors. Response within 1 business day." |
| `inc-active` | Active incidents | "Real-time incident coordination only. Post-incident analysis goes in the tracker." |

---

## Recommended channel taxonomy (final state)

### Team channels
`team-eng` | `team-product` | `team-sales` | `team-cs` | `team-marketing` | `team-ops`

### Project channels (time-bound; archive on completion)
`proj-[name]` — one per active initiative

### Topic channels (persistent subject-matter)
`topic-security` | `topic-analytics` | `topic-pricing` | `topic-customer-feedback`

### Help channels
`help-legal` | `help-it` | `help-finance` | `help-onboarding`

### Announce channels (one-way broadcast)
`announce-company` | `announce-product`

### Social channels
`social-random` | `social-[city or office]`

### Incident channels
`inc-[YYYY-MM-DD-short-description]` — created per incident, archived after post-mortem

### Bot channels
`bot-github` | `bot-datadog` | `bot-linear` | `bot-pagerduty`

---

## Norms to pin or post in handbook

[Full content norms for each channel family — threads by default, decisions don't live in Slack, @channel policy, SLA expectations, DM vs. public channel guidance]

---

## Implementation sequence
1. **Week 1:** Rename the most confusing channels; create missing announce + bot channels
2. **Week 2:** Move bots to bot channels; post norms in each channel topic
3. **Week 3–4:** Archive dead project channels
4. **Ongoing:** Create `proj-*` channels for new projects; archive on completion
```

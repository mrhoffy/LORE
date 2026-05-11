---
name: runbook-creator
description: Converts a described operational process into a properly formatted runbook — a stress-tested, step-by-step procedure for executing repeatable tasks under operational conditions. Use this skill when the user says "help me document this process", "I need a runbook for [X]", "I want to write an SOP", "we keep doing this the same way but it's in my head", or when an operational procedure needs to be formalized so others can execute it reliably. Distinguish runbooks (operational, stress-tested execution) from playbooks (GTM/process templates) — this skill is for runbooks.
---

# Runbook Creator

Converts a described operational procedure into a runbook — a formal, executable document designed to be followed under operational pressure without the author being present. Based on the Best Business Practices research on recurring work systems and GitLab's handbook-first approach.

## Source references
- Best Business Practices research: Section 2, "Recurring work: runbooks, playbooks, SOPs"
- Google SRE Book — on operational runbook design
- GitLab handbook (canonical implementation of write-it-down culture)
- Best Business Practices research: Section 4, "Canonical document types" (Runbook structure)

---

## Runbook vs. playbook vs. SOP — clarify upfront

| Type | Used for | Who executes | Conditions |
|------|---------|--------------|-----------|
| **Runbook** | Operational procedures — incident response, deployments, system tasks, failure recovery | Technical or ops team members | Often under pressure; written to be followed without context |
| **Playbook** | Repeatable GTM/business process — sales onboarding, customer QBR, renewal motion | GTM, CS, ops | Structured; may require judgment at each step |
| **SOP** | Compliance-grade process — HR, finance, legal, regulatory | Any function | Formal; auditable |

If the user describes a GTM or CS process, redirect to playbook format. If compliance-grade, flag that an SOP may require legal/compliance review. This skill produces runbooks.

---

## Intake questions

**Required:**
1. **The process** — What is the procedure? Walk through it step by step, even if it's rough — the skill will structure it. What does someone actually do?
2. **Trigger** — What causes this runbook to be used? What event, alert, schedule, or condition kicks it off? (e.g., "Datadog alert fires at >95% memory usage" or "Every Friday at 4pm" or "When a new enterprise customer signs")
3. **Who executes it** — What role or team runs this? What's their expected skill level? (Determines how much context to include in each step.)
4. **Preconditions** — What must be true before starting? What access, tools, or environment is needed? What should not be attempted if conditions aren't met?
5. **What success looks like** — How does the person know the procedure worked? What is the expected end state?
6. **What failure looks like** — What could go wrong? What does the person do if a step fails? Who do they escalate to?

**Useful if available:**
- Any existing documentation (even rough notes or Slack messages describing the process)
- Screenshots or diagrams of the system involved
- Previous incidents or errors that happened when this procedure was done wrong
- Links to related runbooks this one depends on or connects to

---

## Core runbook design principles

**Written to be followed without the author present.** The person executing the runbook may be under stress, at 2am, and not familiar with the system. Every step should be specific enough to execute correctly without asking anyone for help.

**Copy-pastable commands.** Any command that needs to be run should be copy-pastable — no interpretation required. This eliminates a major source of execution errors.

**Numbered steps, not bullets.** Numbered steps are sequential and can be tracked. Bullets imply no specific order.

**Verification after critical steps.** After any step that changes system state, include a verification step: "Confirm that [expected state] is true before proceeding."

**Rollback for every change.** For any step that modifies a system, include what to do to undo it. If a step is irreversible, call this out explicitly and require deliberate confirmation before proceeding.

**Escalation contact built in.** Every runbook should say who to call if the procedure fails or produces unexpected results. A runbook with no escalation path is a runbook that produces panicked Slack messages at 3am.

---

## Workflow

### Step 1: Extract and structure the raw procedure
Work through the user's description of the process. Ask clarifying questions as needed. Don't start writing until you understand the full procedure from trigger to completion.

### Step 2: Identify the risk points
For each step, ask: what could go wrong here? What does the person do if it does? These become the "if this fails" instructions embedded in the step.

### Step 3: Write steps as copy-pastable, verification-included instructions
Each step should be:
- Numbered
- Action-verb first ("Run...", "Navigate to...", "Verify...", "Copy...")
- Include any commands in code blocks, ready to copy
- Include what success looks like at the end of the step

### Step 4: Add rollback for every state-changing step
For each step that changes something (deploys, config changes, data operations), add a rollback instruction immediately after.

### Step 5: Finalize with metadata
Add YAML frontmatter with owner, review cadence, and review date. Runbooks go stale — the review cadence is not optional.

---

## Output format

```markdown
---
title: [Runbook Name]
owner: [Name / Role]
last_reviewed: [Date]
review_cadence: quarterly
status: living
tags: [function/ops, type/runbook]
---

# [Runbook Name]

## Purpose
[1–2 sentences: what does this runbook accomplish and why does it exist?]

## Trigger
[What event, condition, alert, or schedule causes this runbook to be used?]

## Preconditions
Before starting, confirm all of the following:
- [ ] [Access / tool / environment needed]
- [ ] [Permission or credential needed]
- [ ] [Condition that must be true before starting]

**Do not proceed if:** [Any condition that should block execution — e.g., "if the database is in a degraded state, escalate to [Name] before continuing"]

## Steps

### Step 1: [Short action name]
[Full instruction. Specific enough to execute without asking anyone.]

```bash
[Copy-pastable command if applicable]
```

**Verify:** [How to confirm this step worked — what should be true now?]
**If this fails:** [What to do if the step doesn't produce the expected result — retry, skip, or escalate?]

---

### Step 2: [Short action name]
[Full instruction]

**Verify:** [Expected state]
**Rollback:** [How to undo this step if needed]
**If this fails:** [Escalation or fallback]

---

### Step 3: [Continue for all steps...]

---

## Expected completion
[What the end state looks like when the runbook has been executed successfully.]

## Completion verification
[How to confirm the full procedure worked — monitoring check, metric to look at, confirmation message expected, etc.]

## Rollback procedure
[If the entire procedure needs to be undone — overall rollback steps, not just per-step. Include estimated rollback time.]

## Escalation contacts
| Scenario | Contact | How to reach |
|----------|---------|--------------|
| Step [N] fails and rollback doesn't work | [Name] | [Phone / Slack / PagerDuty] |
| Unknown system state | [Name] | [Contact] |
| Customer-impacting incident | [Name] | [Contact] |

## Related runbooks
- [Link to related runbook]: [When to use instead]
- [Link to related runbook]: [When to use in sequence]

## Changelog
| Date | Author | Change |
|------|--------|--------|
| [Date] | [Name] | Initial version |
```

---

## Review and deprecation standards

Every runbook must have:
- A named owner who is responsible for its accuracy
- A review cadence (quarterly for most operational runbooks; more frequently for high-risk procedures)
- A review due date tracked in YAML frontmatter

When a runbook is superseded or the process no longer exists:
- Do not delete — mark `status: deprecated`
- Add `superseded_by: [link to new runbook]`
- Leave a one-sentence forwarding stub at the top

This preserves institutional memory and prevents people from finding the old runbook and executing outdated procedures.

---

## Common failure modes to catch

| Pattern | Problem | Fix |
|---------|---------|-----|
| Vague steps ("check the logs") | Executor doesn't know what to check or what to look for | Add specific: what logs, what pattern, what means success/failure |
| No rollback | Executor can't undo a failed step | Add rollback after every state-changing step |
| No escalation contact | Executor panics when procedure fails | Add named escalation contact with how to reach them |
| No verification steps | Executor proceeds despite silent failure | Add "Verify:" after every critical step |
| Commands with variables not filled in | Executor copies wrong command | Use clear placeholder format: `<REPLACE_WITH_CLUSTER_NAME>` |
| No review date | Runbook goes stale; executor follows outdated instructions | Add `review_due` to frontmatter |

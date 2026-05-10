# SBOS Setup Interview

This is the first thing you do. Everything else depends on it.

Claude uses your answers to write your Reference files — the five documents that tell the system who you are, how you communicate, and what it should never do without your approval. The better your answers, the better the system works from day one.

**Two ways to complete this:**

**Voice (recommended):** Record your answers while reading through the questions below. The easiest way: enable the Obsidian Audio Recorder (Settings → Core plugins → Audio recorder), open this file in Obsidian, and hit record — you can read each question and answer without switching apps. When done, transcribe the recording and drop the transcript into `0 | Raw/onboarding/onboarding-transcript.md`, then open Claude Code and type: `/setup`.

**Text:** Answer each question directly in this file. Delete the placeholder lines and write your answers in plain sentences. When done, open Claude Code and type: `/setup`.

You do not need to answer every question perfectly. Claude will ask follow-up questions if something is unclear.

---

## Part 1 — Who You Are

*These answers go into `identity.md`.*

**Q1. What's your role and what are you actually responsible for day-to-day?**

*Hint: Don't just say your title. What does someone come to you for? What breaks if you're not there?*

> Your answer:

---

**Q2. What does a successful week look like for you?**

*Hint: Be specific. "Three customer calls, one decision made, pipeline moved forward" is better than "productive".*

> Your answer:

---

**Q3. What are you trying to accomplish in the next 90 days?**

*Hint: One or two things, not a full goal list. What matters most right now?*

> Your answer:

---

**Q4. What are the green flags and red flags you've learned to watch for — in people, deals, or situations?**

*Hint: This is pattern recognition from experience. What makes you say yes quickly? What makes you pause?*

> Your answer:

---

## Part 2 — How You Work

*These answers go into `preferences.md`.*

**Q5. Walk me through a typical day. What's the rhythm?**

*Hint: When are you sharpest? When do you do deep work vs. meetings vs. admin?*

> Your answer:

---

**Q6. How do you like to make decisions?**

*Hint: Do you want options laid out with a clear recommendation? Do you prefer to think out loud first? Do you want risks surfaced upfront or at the end?*

> Your answer:

---

**Q7. What kinds of work energize you? What drains you?**

*Hint: Be honest. This shapes what Claude takes off your plate vs. keeps on yours.*

> Your answer:

---

**Q8. What's your biggest recurring time sink that shouldn't be?**

*Hint: The thing you keep doing that a system should handle.*

> Your answer:

---

**Q9. How do you want Claude to respond by default — short bullets, full analysis, just tell me what to do?**

*Hint: Think about the last time an AI gave you output you actually liked. What made it work?*

> Your answer:

---

## Part 3 — Your Relationships

*These answers seed your first person pages and go into `identity.md`.*

**Q10. Who are the 5–10 people you interact with most? Who are they and what do you need from each of them?**

*Hint: Name them. Role, company, what the relationship is about.*

> Your answer:

---

**Q11. Where do commitments and follow-ups fall through for you?**

*Hint: The place things go to die — email, Slack, memory, notes app?*

> Your answer:

---

**Q12. Who do you owe something to right now? Who owes something to you?**

*Hint: A quick brain dump. These become your first open threads.*

> Your answer:

---

**Q13. How do you like to stay in touch with people who matter to you professionally?**

*Hint: Cadence, channel, style. Do you reach out proactively or respond to triggers?*

> Your answer:

---

## Part 4 — Your Voice

*These answers go into `comms.md`.*

**Q14. How would someone who knows your writing well describe it?**

*Hint: Three adjectives and one sentence is plenty.*

> Your answer:

---

**Q15. Share an example of something you wrote that you felt good about — an email, message, or memo. Paste it or describe what made it work.**

*Hint: This is the calibration standard. The more specific, the better.*

> Your answer:

---

**Q16. What phrases, patterns, or styles do you hate in writing — yours or others'?**

*Hint: "I hope this finds you well", corporate speak, excessive hedging, passive voice — name the specific things that make you cringe.*

> Your answer:

---

**Q17. How do you write differently depending on who you're talking to?**

*Hint: Investor update vs. team Slack vs. customer email vs. board memo. What changes?*

> Your answer:

---

**Q18. What's the one thing most people get wrong when writing on your behalf?**

*Hint: The default mistake. What always needs editing?*

> Your answer:

---

## Part 5 — Your Non-Negotiables

*These answers go into `operating-rules.md`.*

**Q19. What should never happen without you explicitly approving it first?**

*Hint: Think about communication (emails, Slack), actions with consequences (scheduling, commitments), anything that touches money, legal, or HR.*

> Your answer:

---

**Q20. What's a mistake that has burned you before that you never want repeated?**

*Hint: Could be operational, relational, or communication-related. The scar tissue.*

> Your answer:

---

**Q21. What are you most protective of — your time, your relationships, your reputation, something else?**

*Hint: What would you be most upset about if Claude got it wrong?*

> Your answer:

---

## Part 6 — Your Tools

*These answers go into `tools.md`.*

**Q22. What tools do you use every day for communication and work?**

*Hint: Email client, Slack, Notion, Linear, calendar, CRM — list what's actually open on your screen.*

> Your answer:

---

**Q23. Where do your meetings live? Do you use Granola, Fireflies, or manual notes?**

*Hint: This determines which sync integration to set up first.*

> Your answer:

---

**Q24. What's the one integration that would save you the most time if it worked automatically?**

*Hint: The thing you keep doing manually that feels like it should be automated.*

> Your answer:

---

## Done

Once you've answered the questions (or recorded and transcribed your voice answers), open Claude Code in this folder and type:

```
run setup
```

Claude will read your answers and write your Reference files. Review each file after it's generated — the first pass is a starting point, not a final product.

Expect to tune your Reference files over the first two weeks as the system learns how you work.

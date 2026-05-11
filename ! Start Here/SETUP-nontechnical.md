# LORE — Non-Technical Setup Guide

This guide covers everything you need to get LORE running, written for
someone who doesn't use a terminal regularly. Work through each step in order.
Check off items as you go.

Total time: 30–60 minutes (one time only).

---

## Part 1 — Get the files

- [ ] Go to [github.com/mrhoffy/LORE](https://github.com/mrhoffy/LORE)
- [ ] Click the green **Code** button near the top right
- [ ] Click **Download ZIP**
- [ ] Find the downloaded file (usually in your Downloads folder)
  - **Mac:** Double-click the ZIP file to unzip it
  - **Windows:** Right-click the ZIP file → Extract All → Extract
- [ ] Move the unzipped `LORE` folder to your Documents folder

You now have the LORE files on your computer.

---

## Part 2 — Install Obsidian

Obsidian is the app you'll use to read and navigate your LORE files.
It's free.

- [ ] Go to [obsidian.md](https://obsidian.md) and click Download
- [ ] Run the installer
- [ ] Open Obsidian
- [ ] When you see the vault picker, click **"Open folder as vault"**
- [ ] Navigate to the `LORE` folder in your Documents
- [ ] Click Open

You should see the LORE folder structure in Obsidian's left sidebar.
The `! Start Here` folder will be at the top.

> **What is a vault?** In Obsidian, a "vault" is just a folder of text files.
> LORE is your vault. Obsidian is the window you use to read it.

---

## Part 3 — Install Claude Code

Claude Code is the AI engine that runs LORE. This is the most involved step.
A separate guide covers it in detail:

- [ ] Open `! Start Here/claude-code-setup.md` in Obsidian
- [ ] Follow each step in that guide
- [ ] Return here when Claude Code is running

---

## Part 4 — Answer your setup questions

- [ ] In Obsidian, open `! Start Here/setup-questions.md`
- [ ] Answer all the questions — write in the space below each one
- [ ] Save the file (Cmd+S on Mac, Ctrl+S on Windows)

---

## Part 5 — Run /begin

- [ ] Open your terminal
  - Mac: Press Cmd+Space, type Terminal, press Enter
  - Windows: Press the Windows key, type cmd, press Enter
- [ ] Type this and press Enter:
  ```
  cd ~/Documents/LORE
  ```
- [ ] Type this and press Enter:
  ```
  claude
  ```
- [ ] When the Claude Code prompt appears, type:
  ```
  /begin
  ```
- [ ] Wait 2–4 minutes while Claude reads your answers and writes your files

---

## Part 6 — Review your Reference files

Claude has written four files in `~ Reference/`:
- `identity.md` — who you are and what you're building
- `comms.md` — your communication voice and style
- `context.md` — the brief Claude reads at the start of every session
- `preferences.md` — your working rules and defaults

- [ ] Open each file in Obsidian
- [ ] Read them and correct anything that looks wrong
- [ ] The more accurate these files are, the better everything that follows will be

---

## Part 7 — Clean up the sidebar

Now that setup is done, the `! Start Here` folder no longer needs to sit at the top.

- [ ] In Obsidian's left sidebar, right-click `! Start Here` → **Rename**
- [ ] Change the name to `~ Setup`
- [ ] Right-click `~ Setup/SETUP-nontechnical.md` → **Delete**
- [ ] Right-click `~ Setup/claude-code-setup.md` → **Delete**

The remaining files in `~ Setup/` are permanent references — keep them.
The folder will now sit below `~ Reference/` in the sidebar, out of the way but still accessible.

---

## You're set up.

Day 0 is complete. You never have to do this again.

Go back to the README for your First Week plan.

---

## Optional — Build Canon (for teams)

If you're using LORE across a team, Canon gives everyone a shared foundation —
company context, product knowledge, language rules, and org structure — without
merging personal workstreams.

**Skip this if:** you're the only person using LORE, or you want to get the core
system running before adding the team layer. You can always do this later.

**Do this if:** multiple people will use LORE, or you want Claude to write with
consistent company language from day one.

- [ ] Open `! Start Here/canon-interview.md` in Obsidian
- [ ] Answer the questions — write directly below each one, plain and honest
  (45–90 minutes; leave `[SKIP]` for anything you want to come back to)
- [ ] Save the file
- [ ] Optionally: drop supporting files (pitch deck PDF, brand guidelines, customer
  reviews) into the `Raw/canon-source/` folder
- [ ] Open Claude Code and type: `build canon from interview`
- [ ] Wait 3–5 minutes while Claude populates your Canon files
- [ ] Review each Canon file in Obsidian — correct anything that doesn't sound right
- [ ] Share the `Canon/` folder with any other team members running LORE

---

## Something went wrong?

See `! Start Here/TROUBLESHOOTING.md` for the most common issues and fixes.

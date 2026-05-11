# Troubleshooting

Common problems and fixes. Work through the relevant section below.

---

## Claude Code not found after install

**Symptom:** You type `claude` in the terminal and see "command not found."

**Fix:**
1. Close your terminal completely
2. Reopen it
3. Type `claude` again

If still not found:
1. Type `npm install -g @anthropic-ai/claude-code` again
2. Wait for it to finish
3. Close and reopen terminal
4. Type `claude`

---

## `/begin` not recognized

**Symptom:** You type `/begin` and Claude doesn't respond with setup questions.

**Fix:**
Make sure you're in the LORE folder before opening Claude. In your terminal:
```
cd ~/Documents/LORE
claude
```
Then type `/begin` once the `>` prompt appears.

---

## Obsidian not showing the folder structure correctly

**Symptom:** Obsidian opens but you see an empty vault or the wrong folders.

**Fix:**
1. Close Obsidian
2. Reopen it
3. At the vault picker, click **"Open folder as vault"**
4. Make sure you select the `LORE` folder itself — not a folder inside it
   and not the folder that contains it

The correct folder contains `CLAUDE.md`, `README.md`, and the `! Start Here` folder.

---

## API key errors

**Symptom:** Claude Code says your API key is invalid or missing.

**Fix:**
1. Go to [console.anthropic.com](https://console.anthropic.com)
2. Go to Settings → API Keys
3. Create a new key
4. In your terminal, type `claude` and enter the new key when prompted

API keys start with `sk-ant-`. Make sure you copied the full key with no spaces.

---

## Python errors when running sync scripts

**Symptom:** Error messages mentioning Python when trying to sync Gmail or Slack.

**Fix:**
1. Go to [python.org/downloads](https://python.org/downloads)
2. Download the latest Python 3.x installer for your OS
3. **Important on Windows:** Check "Add Python to PATH" before clicking Install
4. **Important on Mac:** Check "Add Python to PATH" during install
5. Close and reopen your terminal
6. Type `python3 --version` (Mac) or `python --version` (Windows)
   — you should see a version number like `Python 3.12.0`
7. In your terminal, in the LORE folder, run:
   ```
   make install-deps
   ```

---

## Billing / payment errors

**Symptom:** Claude Code runs but stops with a billing error.

**Fix:**
1. Go to [console.anthropic.com](https://console.anthropic.com)
2. Click Billing
3. Add a credit card
4. Claude Code charges per use — typical LORE usage is $5–20/month

---

## Still stuck?

The Claude Code documentation is at [docs.anthropic.com](https://docs.anthropic.com).
For LORE-specific questions, open Claude Code and describe what happened —
Claude can usually help diagnose setup issues.

# Installing Claude Code — Step by Step

Claude Code is the AI engine that powers LORE. It runs in your terminal.
This guide assumes no prior technical knowledge.

---

## Step 1 — Install Node.js

Claude Code requires Node.js to run. You don't need to understand Node.js —
it just needs to be present on your computer.

1. Go to [nodejs.org/en/download](https://nodejs.org/en/download)
2. Download the **LTS** version for your operating system (Mac or Windows)
3. Run the installer — click through the defaults

To confirm it installed: open your terminal (see Step 2) and type `node --version`.
If you see a version number like `v20.0.0`, Node.js is ready.

---

## Step 2 — Open your terminal

The terminal is a text-based window where you type commands.

- **Mac:** Press `Cmd + Space`, type `Terminal`, press Enter
- **Windows:** Press the Windows key, type `cmd`, press Enter

A window will open with a blinking cursor. This is normal.

---

## Step 3 — Install Claude Code

In your terminal, type or paste this line exactly and press Enter:

```
npm install -g @anthropic-ai/claude-code
```

You'll see text scrolling. This is normal. Wait for it to finish (1–2 minutes).
When the cursor returns, Claude Code is installed.

---

## Step 4 — Create your Anthropic account

1. Go to [console.anthropic.com](https://console.anthropic.com)
2. Create an account with your email
3. Go to **Settings → API Keys → Create Key**
4. Give the key a name (e.g. "LORE")
5. Copy the key — you will only see it once. Paste it somewhere safe temporarily.
6. Go to **Billing** and add a payment method.
   Claude Code charges per use. Typical usage for LORE is $5–20/month.

---

## Step 5 — Connect your API key to Claude Code

In your terminal, navigate to your LORE folder:

```
cd ~/Documents/LORE
```

Then type:

```
claude
```

Claude Code will ask for your API key. Paste it and press Enter.

If you see a prompt like `>`, Claude Code is running and ready.
Type `/begin` to start your LORE setup.

---

## Something went wrong?

**"npm: command not found"** — Node.js didn't install correctly.
Restart your computer and try Step 1 again.

**"claude: command not found" after install** — Close and reopen your terminal,
then try typing `claude` again.

**API key error** — Make sure you copied the full key with no extra spaces.
Keys start with `sk-ant-`. Go to console.anthropic.com to create a new one
if needed — you can revoke old ones safely.

**Billing error** — Claude Code requires a payment method before it will run.
Add one at console.anthropic.com → Billing, even if you plan to use it lightly.

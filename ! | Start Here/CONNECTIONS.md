# CONNECTIONS.md — Tool Setup Guide

This is the technical setup document. The `!` prefix on this folder sorts it to the top of the Obsidian sidebar — do not rename it. Separate from `! | Start Here/setup-questions.md` (which personalizes your content), this guide plugs in your tools.

Work through it in order. Each layer depends on the one before it.

**Time estimate:** 60–90 minutes for the full stack. Obsidian + Claude Code alone is 15 minutes.

---

## Priority 1 — Obsidian (required)

Download from [obsidian.md](https://obsidian.md). Free for personal use.

**Open the vault:**
1. Launch Obsidian → **Open folder as vault**
2. Select your SBOS folder
3. The folder structure appears in the left sidebar

**Core settings** (Settings → gear icon, bottom left):

| Setting | Where | Value |
|---------|-------|-------|
| Default location for new notes | Files & Links | `0 \| Raw` |
| Attachment folder path | Files & Links | `0 \| Raw` |
| Use `[[Wikilinks]]` | Files & Links | Off |
| Show line numbers | Editor | On |
| Readable line length | Editor | On |

---

### Core Plugins

These ship with Obsidian. Go to **Settings → Core plugins** and confirm all of these are enabled:

| Plugin | Why it matters for SBOS |
|--------|------------------------|
| **Graph view** | Visual map of connections between people, projects, and concepts — your wiki as a network |
| **Backlinks** | Shows which pages link to the current one — critical for seeing who or what references a person or project |
| **Outgoing links** | Shows what the current page links to — helps maintain cross-references |
| **Global search** | Full-text search across the entire vault including `0 \| Raw/` |
| **Properties** | View and edit frontmatter as structured fields — makes page metadata readable at a glance |
| **Command palette** | `Cmd+P` to run any Obsidian command or skill trigger — your fastest way to navigate |
| **Quick switcher** | `Cmd+O` to jump to any file instantly |
| **Page preview** | Hover over a link to preview the page without opening it |
| **File recovery** | Automatic snapshots — safety net if something gets overwritten |
| **Bases** | Built-in query layer (like Dataview lite) — lets you filter wiki pages by frontmatter fields |
| **Canvas** | Visual workspace — useful for mapping out a deal, org chart, or strategy |
| **Audio recorder** | Record voice notes directly into `0 \| Raw/` — useful for the voice path in setup |
| **Bookmarks** | Pin frequently-used pages — pin `1 \| Wiki/index.md` and `9 \| Reference/context.md` |

You do not need: Daily notes, Templates (built-in), Note composer, Slides, Random note, ZK prefixer.

---

### Web Clipper (browser extension)

**What it does:** Clips any web page — articles, LinkedIn profiles, competitor pages, research — directly into `0 | Raw/` with one click. The cleanest way to feed the raw drop zone without copy-pasting.

**Install:**
- Chrome / Arc: [Obsidian Web Clipper on Chrome Web Store](https://chromewebstore.google.com/detail/obsidian-web-clipper/mphkdfmipddgfobjhphabphmpdckgfhb)
- Firefox: available on Firefox Add-ons
- Safari: available on App Store

**Configure after install:**
1. Click the extension icon → **Settings**
2. Set **Vault** to your SBOS vault name
3. Set **Default location** to `0 | Raw`
4. Set **Note name** to `{{date}} - {{title}}`
5. Set **Tags** to `web-clip` so Claude can identify these files

**Verify:** Visit any article, click the clipper icon — a markdown file should appear in `0 | Raw/` with the page content and a `source: web-clip` tag.

---

### Community Plugins

Go to **Settings → Community plugins → Turn on community plugins → Browse**.

Install and enable all six in order:

---

#### 1. Terminal
**Author:** polyipseity | Search: `Terminal`

Adds a full zsh/bash shell inside Obsidian. Run Claude Code, sync scripts, and git commands without leaving the app.

**Setup:**
1. Settings → Terminal
2. **Default profile** → `zsh`
3. **Working directory** → your SBOS folder path
4. Set a hotkey: Settings → Hotkeys → search "Terminal" → assign `Cmd+`` ` (backtick)

**Verify:** Press your hotkey — terminal opens at the vault root. Type `ls` — you should see `0 | Raw`, `1 | Wiki`, etc.

---

#### 2. Granola Sync
**Author:** Tom Elliot | Search: `2 | Granola`

Syncs your Granola meeting notes automatically into the vault. Requires a Granola account ([granola.so](https://granola.so)).

**Setup — exact settings to configure:**

Go to **Settings → Granola Sync** and set each field:

| Field | Value | Notes |
|-------|-------|-------|
| Enable sync | On | |
| Sync interval | 900 | Seconds — every 15 minutes |
| Sync days back | 30 | Pull last 30 days on first run |
| Include shared notes | On | Gets notes from meetings with others |
| Include private notes | Your choice | Private = notes only you can see |
| Save as individual files | On | One file per meeting |
| **Base folder type** | **Custom** | Change this from the default |
| **Custom base folder** | **`2 | Granola`** | Must be a top-level vault folder — plugin does not support nested paths |
| Subfolder pattern | None | Keeps the Granola folder flat |
| Filename pattern | `{date}, {title}` | Produces `2026-05-09, Team Standup.md` |
| Link from daily notes | Off | |
| Sync transcripts | Optional | Turn on if you want raw transcripts alongside summaries |

Click **Sync now** after saving to pull existing meetings.

**Verify:** Check `2 | Granola/` — meeting notes should appear as markdown files named `YYYY-MM-DD, Meeting Title.md` with frontmatter.

---

#### 3. Rainbow-Colored Sidebar
**Author:** Kevin Woblick | Search: `Rainbow`

Colors each top-level folder a different color. With the pipe naming convention, this makes navigation fast at a glance — you visually know where you are before reading the folder name.

**Setup:**
1. Settings → Rainbow-Colored Sidebar
2. Choose a theme — **Pastel** works well; **Vibrant** if you want higher contrast
3. Nothing else to configure

**Verify:** Sidebar folders should now each show a distinct color.

---

#### 4. Templater
**Author:** SilentVoid13 | Search: `Templater`

Applies the correct frontmatter template automatically when you create a new note in a wiki folder. Without this, new notes start blank and you have to fill in frontmatter manually.

**Setup:**
1. Settings → Templater
2. **Template folder location** → `1 | Wiki/1.7 | System/templates`
3. **Trigger Templater on new file creation** → On
4. **Enable folder templates** → On
5. Add one row per folder:

| Folder | Template file | Notes |
|--------|--------------|-------|
| `1 | Wiki/1.1 | Network` | `person-page.md` | Default for Network; apply `company-page.md` manually for companies |
| `1 | Wiki/1.2 | Initiatives/backlog` | `task-card.md` | |
| `1 | Wiki/1.2 | Initiatives/active` | `task-card.md` | |
| `1 | Wiki/1.3 | Knowledge` | `knowledge-page.md` | |
| `1 | Wiki/1.4 | Ledger` | `decision-page.md` | Remember to date-prefix the filename |
| `1 | Wiki/1.5 | Playbooks` | `playbook-page.md` | |

**How it works:** Create a new note anywhere in `1.1 | Network/` and Templater auto-fills the person frontmatter — name, role, employer, relationship, next_touchpoint, etc. Claude still writes the content; Templater just saves you from blank-page friction when creating pages manually in Obsidian.

**Verify:** Create a test note inside `1 | Wiki/1.1 | Network/` — it should open pre-filled with the person-page frontmatter.

---

#### 5. Obsidian Git
**Author:** Vinzent03 | Search: `Obsidian Git`

Auto-commits every 15 minutes. Every wiki write Claude makes is committed automatically — you get a full history of how the system evolved and protection against data loss.

**Setup:**
1. Install and enable the plugin
2. Settings → Obsidian Git
3. Set **Auto pull interval** → `15` (minutes)
4. Set **Auto push interval** → `15` (minutes, if you have a remote configured)
5. Set **Commit message** → `vault: auto-save {{date}}`
6. Enable **Auto backup after file change** → On

**First commit:**
```bash
git init
git add .
git commit -m "vault: initial commit"
```

Run these in the Terminal plugin from the vault root. After that, Obsidian Git handles everything automatically.

**Verify:** Make any edit, wait 15 minutes, then check **Obsidian Git: Open source control view** from the command palette — you should see a commit in the history.

---

#### 6. Folder Notes
**Author:** AidanLau | Search: `Folder Notes`

Makes folders clickable — clicking a folder name opens a dedicated overview page for that folder instead of just expanding it. Each wiki folder (1.1 through 1.6) has a folder note that Claude maintains as a living dashboard.

**Setup:**
1. Settings → Folder Notes
2. **Storage location** → `Inside folder`
3. **Folder note name** → same as folder (default)
4. Enable **Hide folder note** → On (keeps the sidebar clean)

**Verify:** Click directly on `1 | Wiki/1.1 | Network/` in the sidebar — it should open `1.1 | Network.md` as a page, not just expand the folder tree.

---

### Recommended Theme

Go to **Settings → Appearance → Themes → Manage** and install **Minimal** by kepano.

Minimal is the best theme for dense information display — tight line height, clean typography, good callout rendering. Enable **Minimal Theme Settings** plugin alongside it for configuration.

---

## Priority 2 — Claude Code (required)

```bash
npm install -g @anthropic-ai/claude-code
```

Requires Node.js 18+. Install Node from [nodejs.org](https://nodejs.org) if needed.

**Connect to your vault:**
```bash
cd /path/to/your/SBOS
claude
```

Claude Code reads `CLAUDE.md` automatically on startup.

**Verify:** Type `/setup` — Claude should detect `! | Start Here/setup-questions.md` and begin the onboarding interview.

**Daily use:** Open Obsidian and Terminal side by side. Obsidian for browsing and reading. Terminal (inside Obsidian) for Claude Code sessions.

---

## Priority 3 — Google Suite (high value, ~30 minutes)

Pulls Gmail threads and Google Calendar events into `0 | Raw/`. This is the most technically involved setup step — honest time estimate is 30 minutes, and the Google Cloud console is not beginner-friendly. If you are not comfortable with developer consoles, get a technical person to complete steps 1–4 and then do the rest yourself.

### Step 1 — Create a Google Cloud project

1. Go to [console.cloud.google.com](https://console.cloud.google.com)
2. **New Project** → name it `sbos` → **Create**
3. Select the project from the top dropdown

### Step 2 — Enable APIs

**APIs & Services → Library** — search for and enable:
- **Gmail API**
- **Google Calendar API**
- **Google Drive API** (if you want Drive/Workspace sync)

### Step 3 — Create OAuth credentials

1. **APIs & Services → OAuth consent screen** → **External** → **Create**
2. Fill in: App name (`SBOS`), your email, developer contact email — click through remaining screens
3. **APIs & Services → Credentials → Create Credentials → OAuth client ID**
4. Choose **Desktop app** → name it `sbos-local` → **Create**
5. Download the JSON file

```bash
mkdir -p ~/.config/sbos
mv ~/Downloads/client_secret_*.json ~/.config/sbos/credentials.json
```

### Step 4 — Install Python dependencies

```bash
pip install google-auth google-auth-oauthlib google-api-python-client python-frontmatter
```

### Step 5 — Authorize (one-time)

Open Claude Code and type:
```
implement gmail sync auth flow
```

Claude will add the `--auth` flag handling to the sync script and walk you through the browser authorization. The token saves locally — you will not repeat this step.

### Step 6 — Configure what to pull

Open Claude Code and tell it what you want:
```
Configure Gmail sync to pull starred emails and emails from [domains or people]
```

Claude will implement the filter logic in `1 | Wiki/1.7 | System/sync/sync-gmail.py`.

### Step 7 — Schedule

```bash
make schedule
```

Sets up launchd to run Gmail sync every 30 minutes, Granola sync every 15.

**Verify:** Run manually:
```bash
python3 "1 | Wiki/1.7 | System/sync/sync-gmail.py"
```
Files should appear in `0 | Raw/` with `source: gmail` frontmatter.

---

## Priority 4 — Slack (~15 minutes)

Requires either workspace admin access or admin permission to create a Slack app.

1. [api.slack.com/apps](https://api.slack.com/apps) → **Create New App → From scratch** → name it `SBOS`
2. **OAuth & Permissions → Scopes → Bot Token Scopes** — add:
   - `channels:history`, `channels:read`, `groups:history`, `users:read`
3. **Install to Workspace** → copy the **Bot User OAuth Token**

```bash
echo 'export SLACK_BOT_TOKEN="xoxb-your-token"' >> ~/.zshrc && source ~/.zshrc
```

4. In each Slack channel you want synced: `/invite @sbos`
5. Open Claude Code: `implement slack sync for channels [list your channels]`

Claude builds `1 | Wiki/1.7 | System/sync/sync-slack.py`.

---

## Optional Connections

Connect these once the core system is stable and you know what value they add.

| Tool | What it adds | How to connect |
|------|-------------|----------------|
| **Fireflies** | Alternative meeting transcription | `add Fireflies as a source` in Claude Code |
| **Google Drive / Workspace** | Docs and Sheets into Raw | `implement Drive sync` in Claude Code (uses existing Google OAuth) |
| **Notion** | Pull pages and databases | `add Notion as a source` in Claude Code |
| **Linear** | Pull issues and project updates | `add Linear as a source` in Claude Code |
| **WhatsApp** | Pull conversations (requires WhatsApp Business API) | `add WhatsApp as a source` in Claude Code |
| **Apple Calendar** | Native macOS calendar via `icalBuddy` CLI | `add Apple Calendar as a source` in Claude Code |

---

## Verification Checklist

```
[ ] Obsidian opens vault without errors
[ ] Sidebar shows colored folders (Rainbow plugin)
[ ] Graph view shows folder structure
[ ] Properties panel visible when opening a markdown file
[ ] Web Clipper browser extension installed and pointed at 0 | Raw
[ ] Terminal plugin opens zsh at vault root (Cmd+backtick)
[ ] Granola Sync: custom base folder set to "2 | Granola"
[ ] Granola Sync: at least one meeting visible in 2 | Granola/
[ ] Templater: template folder set to 1 | Wiki/1.7 | System/templates, folder templates enabled for all 6 mappings
[ ] Obsidian Git: auto-backup enabled, initial git commit done
[ ] Folder Notes: storage inside folder, folder note opens when clicking 1.1 | Network
[ ] Minimal theme installed and active
[ ] Claude Code opens in vault root and reads CLAUDE.md
[ ] `run setup` triggers the onboarding interview
[ ] Google OAuth credentials saved to ~/.config/sbos/
[ ] Gmail sync script runs without auth errors
[ ] make schedule configured sync job cadences
```

---

## Troubleshooting

**Granola notes not appearing in `2 | Granola/`:**
Check Settings → Granola Sync → confirm "Base folder type" is **Custom** and "Custom base folder" is `2 | Granola`. The plugin only supports top-level vault folders — nested paths are silently ignored. Click **Sync now** after changing.

**Terminal not opening:**
Confirm zsh is set as the default profile in Terminal plugin settings. On macOS, check `which zsh` — should return `/bin/zsh`.

**Gmail auth error:**
Delete `~/.config/sbos/token.json` and re-run the auth flow. Tokens expire after inactivity.

**Claude Code not reading CLAUDE.md:**
You must open Claude Code from inside the SBOS folder: `cd /path/to/SBOS && claude`. Opening from a parent directory means it misses the project CLAUDE.md.

**Pipe characters in folder names causing script errors:**
All sync scripts use `pathlib.Path` which handles spaces and special characters. For manual bash commands, always quote paths: `ls "0 | Raw/"`.

---

## Advanced: Automation (Optional)

Set this up once the core system is working and you want SBOS to run workflows without manual `run` commands. Do not attempt this on Day 1.

### Shell Commands plugin
**Author:** Tane Piper | Search: `Shell Commands`

Triggers Claude Code in headless mode on Obsidian vault events — no terminal session required. When a trigger fires, Claude reads your vault, runs the skill, and exits silently.

**Prerequisites:**
- Claude Code installed and in your system PATH: `npm install -g @anthropic-ai/claude-code`
- Verify with: `which claude` — should return a path, not an error
- An active Claude subscription (headless runs consume the same capacity as interactive sessions)

**Setup:**
1. Install **Shell Commands** from Community plugins
2. Settings → Shell Commands → add two commands:

| Command name | Shell command | Trigger |
|-------------|---------------|---------|
| SBOS: Health check | `cd "{{vault_path}}" && claude -p "run check-health" --output-format text` | On vault focus (Events tab) |
| SBOS: Refresh knowledge | `cd "{{vault_path}}" && claude -p "run refresh-knowledge" --output-format text` | Every 15 minutes (Events tab → interval) |

3. In the **Events** tab for each command, set the trigger as specified above.
4. Test the health check manually before enabling the interval trigger.

**What this gives you:** Drop a file in `0 | Raw/` and walk away — it processes automatically within 15 minutes. Open Obsidian after being away and a health check runs without you thinking about it.

**If something goes wrong:** Errors are silent. Check `1 | Wiki/1.7 | System/logs/` for output, or run `run check-health` manually to diagnose.

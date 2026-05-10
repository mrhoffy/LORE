.PHONY: setup install-deps check-health init-git help

help:
	@echo "SBOS — Second Brain Operating System"
	@echo ""
	@echo "Commands:"
	@echo "  make setup        Run interactive setup (recommended for new users)"
	@echo "  make install-deps Install Python dependencies for sync scripts"
	@echo "  make check-health Verify sources and jobs are configured"
	@echo "  make init-git     Initialize git repo and make first commit"
	@echo "  make schedule     Schedule sync jobs with launchd (macOS)"

setup:
	@echo "=== SBOS Setup ==="
	@echo ""
	@echo "Step 1: Fill in your identity and communication style"
	@echo "  Open: 9 | Reference/identity.md"
	@echo "  Open: 9 | Reference/comms.md"
	@echo ""
	@echo "Step 2: Open this folder as an Obsidian vault"
	@echo "  Obsidian → Open folder as vault → $(PWD)"
	@echo ""
	@echo "Step 3: Open Claude Code in this folder"
	@echo "  cd $(PWD) && claude"
	@echo ""
	@echo "Step 4: Connect your first source"
	@echo "  In Claude Code: 'connect granola' or 'add a source'"
	@echo ""
	@echo "Done. See README.md for the first-week plan."

install-deps:
	pip install requests python-frontmatter python-dateutil

check-health:
	@echo "Checking SBOS structure..."
	@test -f CLAUDE.md && echo "  CLAUDE.md: ok" || echo "  CLAUDE.md: MISSING"
	@test -f "9 | Reference/identity.md" && echo "  identity.md: ok" || echo "  identity.md: MISSING"
	@test -f "9 | Reference/comms.md" && echo "  comms.md: ok" || echo "  comms.md: MISSING"
	@test -f "1 | Wiki/index.md" && echo "  Wiki/index.md: ok" || echo "  Wiki/index.md: MISSING"
	@test -d .claude/skills && echo "  Skills: ok" || echo "  Skills: MISSING"
	@echo "Done."

init-git:
	git init
	git add CLAUDE.md README.md Makefile
	git add "! | Start Here/"
	git add ".claude/skills/"
	git add ".claude/settings.json"
	git add "1 | Wiki/index.md"
	git add "1 | Wiki/hot.md"
	git add "1 | Wiki/log.md"
	git add "1 | Wiki/1.7 | System/templates/"
	git add "9 | Reference/"
	git commit -m "Initial SBOS scaffold"
	@echo ""
	@echo "Repo initialized. Push to GitHub:"
	@echo "  gh repo create SBOS --public --source=. --push"

schedule:
	@echo "=== SBOS Schedule ==="
	@echo ""
	@echo "Granola sync: handled automatically by the Obsidian Granola Sync plugin."
	@echo "  Configure in Obsidian → Settings → Granola Sync → Sync interval: 900"
	@echo "  No launchd job needed."
	@echo ""
	@echo "Gmail / Slack sync: scripts are built by Claude on demand."
	@echo "  Step 1: Open Claude Code and type: implement gmail sync"
	@echo "  Step 2: Once the script exists at 1 | Wiki/1.7 | System/sync/, run:"
	@echo "    make schedule-gmail"
	@echo ""
	@echo "See ! | Start Here/CONNECTIONS.md → Advanced: Automation for the Shell Commands"
	@echo "plugin, which auto-triggers Claude workflows on vault events."

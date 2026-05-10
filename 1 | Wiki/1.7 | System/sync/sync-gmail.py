#!/usr/bin/env python3
"""
sync-gmail.py — Pull important email threads from Gmail into 0 | Raw/

Setup:
  pip install google-auth google-auth-oauthlib google-api-python-client
  Follow Google OAuth setup for Gmail API
  Store credentials in ~/.config/sbos/gmail-credentials.json

Schedule:
  launchd or cron — recommended every 30 minutes
"""

import os
import json
import logging
from datetime import datetime
from pathlib import Path

BASE = Path(__file__).parent.parent.parent
RAW_DIR = BASE / "0 | Raw"
LOG_FILE = BASE / "3 | Operations" / "logs" / "sync-gmail.jsonl"
HEALTH_FILE = BASE / "3 | Operations" / "health" / "gmail-health.md"

logging.basicConfig(level=logging.INFO)
log = logging.getLogger("sync-gmail")


def write_health(status: str, items_today: int, error: str = None):
    content = f"""---
type: source_health
source: gmail
status: {status}
last_sync: {datetime.now().isoformat()}
items_today: {items_today}
error: {error or "none"}
---
"""
    HEALTH_FILE.write_text(content)


def make_frontmatter(subject: str, sender: str, date: str, thread_id: str) -> str:
    return f"""---
type: raw_source
source: gmail
title: {subject}
from: {sender}
date: {date}
thread_id: {thread_id}
status: unprocessed
created: {datetime.now().isoformat()}
---

"""


def main():
    # TODO: implement Gmail API call
    # Suggested filters: starred, important, or specific labels
    # Pull threads, not individual messages
    log.info("Gmail sync stub — implement OAuth + API call here")
    write_health("stub", 0)


if __name__ == "__main__":
    main()

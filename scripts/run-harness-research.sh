#!/bin/bash
# One-shot: spawn fetch to research harness engineering
# Scheduled for 9:00 AM EST 2026-03-06

LOG="$HOME/.openclaw/workspace-fetch/scripts/fetch-run.log"
VAULT_DIR="$HOME/vault/missions/general/research"

echo "[$(date)] Starting fetch: harness engineering research" >> "$LOG"

openclaw agent --agent fetch -m \
  "Research harness engineering in depth. Specifically investigate what Anthropic and OpenAI have published about this — their official docs, blog posts, papers, and any public repos. Cover: what harness engineering is, how it differs from prompt engineering, best practices from both companies, tooling patterns, evaluation frameworks, and where the field is heading. File the brief to ~/vault/missions/general/research/harness-engineering.md with proper vault formatting. Include an eval file." \
  >> "$LOG" 2>&1

echo "[$(date)] Fetch run completed" >> "$LOG"

# Self-cleanup: remove the cron entry
(crontab -l 2>/dev/null | grep -v "run-harness-research" | crontab -)
echo "[$(date)] Cron entry cleaned up" >> "$LOG"

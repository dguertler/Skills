#!/bin/bash
set -euo pipefail
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then exit 0; fi
git config --global user.email "noreply@anthropic.com"
git config --global user.name "Claude"
SKILLS_REPO="https://github.com/dguertler/Skills.git"
TEMP_DIR=$(mktemp -d)
trap "rm -rf \"$TEMP_DIR\"" EXIT
git clone --depth 1 --quiet "$SKILLS_REPO" "$TEMP_DIR/skills"
mkdir -p ~/.claude/skills
cp -rf "$TEMP_DIR/skills/claude-config/.claude/skills/." ~/.claude/skills/
[ -f "$TEMP_DIR/skills/claude-config/CLAUDE.md" ] && \
  cp "$TEMP_DIR/skills/claude-config/CLAUDE.md" ~/.claude/CLAUDE.md
echo "Skills synced:"; ls ~/.claude/skills/
echo ""
echo "=== CLAUDE.md ==="
cat ~/.claude/CLAUDE.md

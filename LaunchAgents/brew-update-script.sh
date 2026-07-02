#!/bin/bash

# Set proxy if configured via environment variable (e.g. export BREW_PROXY=http://127.0.0.1:7890)
if [ -n "$BREW_PROXY" ]; then
  export http_proxy="$BREW_PROXY"
  export https_proxy="$BREW_PROXY"
fi

# Log file setup
LOG_FILE="$HOME/Library/Logs/brew-update.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Create log header
echo "=== Brew Update/Upgrade: $DATE ===" >> "$LOG_FILE"

# Run brew update
echo "Running brew update..." >> "$LOG_FILE"
/opt/homebrew/bin/brew update >> "$LOG_FILE" 2>&1

# Run brew upgrade
echo "Running brew upgrade..." >> "$LOG_FILE"
/opt/homebrew/bin/brew upgrade >> "$LOG_FILE" 2>&1

echo "Completed at $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

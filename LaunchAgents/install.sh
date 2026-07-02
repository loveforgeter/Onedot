#!/usr/bin/env bash

od_echo_info "configuring LaunchAgents ..."

AGENTS_DIR="$(od_pwd)"
SCRIPT_PATH="$AGENTS_DIR/brew-update-script.sh"
PLIST_SRC="$AGENTS_DIR/com.user.brewupdate.plist"
PLIST_DEST="$HOME/Library/LaunchAgents/com.user.brewupdate.plist"

# Only install on macOS
if ! od_is_osx; then
  od_echo_warn "LaunchAgents are macOS only, skipping."
  return
fi

mkdir -p "$HOME/Library/LaunchAgents"

# Generate plist with the real script path substituted
sed "s|{{SCRIPT_PATH}}|$SCRIPT_PATH|g" "$PLIST_SRC" > "$PLIST_DEST"

od_echo_success "LaunchAgent installed: $PLIST_DEST"
od_echo_info "Load with: launchctl load $PLIST_DEST"

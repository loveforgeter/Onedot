#!/usr/bin/env bash

if ! command -v nvim >/dev/null 2>&1; then
  return 0
fi

mkdir -p "$HOME/.config"
od_action_linkdir "$(od_pwd)/nvim" "$HOME/.config/nvim"

mkdir -p "$HOME/.config/nvim/tmp/backup" \
  "$HOME/.config/nvim/tmp/undo" \
  "$HOME/.config/nvim/tmp/fzf-history"

od_echo_success "Neovim configuration installed"

#!/usr/bin/env bash

if ! command -v nvim >/dev/null 2>&1; then
  return 0
fi

mkdir -p "$HOME/.config"
od_action_linkdir "$(od_pwd)/nvim" "$HOME/.config/nvim"

if [[ ! -f "$HOME/.config/nvim/autoload/plug.vim" ]]; then
  if ! command -v curl >/dev/null 2>&1; then
    od_echo_error "curl is required to install Vim-plug for Neovim"
    return 1
  fi
  curl -fLo "$HOME/.config/nvim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

mkdir -p "$HOME/.config/nvim/tmp/backup" \
  "$HOME/.config/nvim/tmp/undo" \
  "$HOME/.config/nvim/tmp/fzf-history"

od_echo_success "Neovim configuration installed"

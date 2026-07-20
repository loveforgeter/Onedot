#!/usr/bin/env bash

if ! command -v zsh >/dev/null 2>&1; then
  od_echo_error "zsh not found!"
  return 1
fi
od_action_link "$(od_pwd)/zsh/main.zsh" "$HOME/.zshrc"
od_echo_success "Zsh configuration installed"
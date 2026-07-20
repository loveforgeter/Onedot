#!/usr/bin/env bash

# Remove old symlink if exists
od_action_rm "$HOME/.vim"

# Create new symlinks
od_action_linkdir "$(od_pwd)/vim/vim" "$HOME/.vim"
od_action_link "$(od_pwd)/vim/vimrc" "$HOME/.vimrc"

# Bootstrap Vim-plug when it is not installed.
if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]; then
  if ! command -v curl >/dev/null 2>&1; then
    od_echo_error "curl is required to install Vim-plug"
    return 1
  fi
  curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Create required directories inside the linked configuration
mkdir -p "$HOME/.vim/tmp/backup" "$HOME/.vim/tmp/undo" "$HOME/.vim/tmp/fzf-history"

od_echo_success "Vim configuration installed"

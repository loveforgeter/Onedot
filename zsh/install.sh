#!/usr/bin/env bash

function od_main() {
  hash zsh || (echo "zsh not installed" && return)

  od_bot "configuring zsh ..."
  od_link "$(od_pwd)/zshrc" "$HOME/.zshrc"
}

od_main $@

unset od_main
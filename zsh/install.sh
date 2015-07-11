#!/usr/bin/env bash

CURRENT_PATH=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

function od_main() {
  hash zsh || (echo "zsh not installed" && return)
  od_bot_normal "configuring zsh ..."
  od_link "${CURRENT_PATH}/zshrc" "$HOME/.zshrc"
  od_bot_done
  od_echo_return
}

od_main $@
#!/usr/bin/env bash

CURRENT_PATH=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

function od_main() {
  od_bot_normal "configuring git ..."
  od_link "${CURRENT_PATH}/gitconfig" "$HOME/.gitconfig"
  od_bot_done
  od_echo_return
}

od_main $@
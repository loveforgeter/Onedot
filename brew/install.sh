#!/usr/bin/env bash

function od_main() {
  hash brew && return

  od_bot_normal "installing homebrew ... "
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  od_bot_done
  od_echo_return
}

od_main $@

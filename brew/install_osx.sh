#!/usr/bin/env bash

function od_main() {
  hash brew && return

  bot "installing homebrew ... "
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

od_main $@

unset od_main

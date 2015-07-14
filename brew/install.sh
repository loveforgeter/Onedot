#!/usr/bin/env bash

function od_osx_setup() {
  hash brew &> /dev/null && return

  od_bot_normal "installing homebrew ... "
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  od_bot_done
  od_echo_return
}


# main
if od_is_osx;then
  od_osx_setup
fi

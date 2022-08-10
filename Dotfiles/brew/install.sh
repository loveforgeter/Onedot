#!/usr/bin/env bash

function od_osx_setup() {
  hash brew &> /dev/null && return
  od_echo_info "installing homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}


# main
if od_is_osx;then
  od_osx_setup
fi

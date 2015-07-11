#!/usr/bin/env bash

function od_ubuntu_setup() {
  od_bot_normal "installing packages via apt-get"
  local PACKAGES=(
  build-essential
  g++
  gcc
  gdb
  git
  htop
  httpie
  vim
  zsh
  )

  for PACKAGE in ${PACKAGES[*]};do
    od_apt_get_install $PACKAGE
  done
  od_bot_done
  od_echo_return
}

function od_osx_setup() {
  hash brew || (echo "brew not installed" && return)
  od_bot_normal "installing packages via homebrew"
  local PACKAGES=(
  astyle
  autoconf
  automake
  clang-format
  cmake
  coreutils
  cscope
  ctags
  gcc
  httpie
  node
  openssl
  pkg-config
  python
  python3
  ruby
  sqlite
  vim
  wget
  xctool
  )

  for PACKAGE in ${PACKAGES[*]};do
    od_brew_install $PACKAGE
  done
  od_bot_done
  od_echo_return
}

function od_main() {
  if od_is_osx;then
    od_osx_setup
  elif od_is_ubuntu;then
    od_ubuntu_setup
  fi
}

od_main $@

#!/usr/bin/env bash

function od_ubuntu_setup() {
  od_echo_info "installing packages via apt-get ..."
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
}

function od_osx_setup() {
  # install packages via home brew
  od_has brew || (echo "brew not installed" && return)
  od_echo_info "installing packages via homebrew ..."
  local PACKAGES=(
  cmake
  coreutils
  httpie
  node
	proxychains-ng
  wget
  xctool
  )

  for PACKAGE in ${PACKAGES[*]};do
    od_brew_install $PACKAGE
  done
}

# main
if od_is_osx;then
  od_osx_setup
elif od_is_ubuntu;then
  od_ubuntu_setup
fi

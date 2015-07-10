#!/usr/bin/env bash

PACKAGES=(
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
  sudo apt-get install -y $PACKAGE
done

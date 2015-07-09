#!/bin/bash

# ask for su permission
sudo -v

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

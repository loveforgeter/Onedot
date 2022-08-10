#!/usr/bin/env bash

sudo -v

[[ -e "/etc/issue" ]] || echo "system not supported!" && return 1
[[ "$(cat /etc/issue)" =~ "Ubuntu" ]] || echo "system not supported!" && return 1

echo "installing unity-tweak-tool for configuring themes ..."
# tools to change theme
sudo apt-get install -y unity-tweak-tool

echo "adding theme repositories ..."
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:moka/stable

echo "updating cache ..."
sudo apt-get update

echo "installing themes ..."
THEMES=(
moka-gtk-theme
moka-icon-theme
numix-gtk-theme
numix-icon-theme
numix-icon-theme-circle
)

for THEME in ${THEMES[*]};do
  sudo apt-get install -y $THEME
done

# numix-icon-theme-square -- a very nice icon theme
# http://mirror.umd.edu/antergos/antergos/i686/
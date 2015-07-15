#!/usr/bin/env bash

##################################################
# setup for ubuntu
function od_ubuntu_setup() {
  local ST_VERSION_NUMBER="$(subl -v | grep -o "[[:digit:]].*")"
  local ST_MAIN_VERSION="${ST_VERSION_NUMBER:0:1}"

  local ST_USER_PATH="$HOME/.config/sublime-text-${ST_MAIN_VERSION}/Packages/User"
  local ST_PKG_PATH="$HOME/.config/sublime-text-${ST_MAIN_VERSION}/Installed Packages"
  local PKGCTRL_DOWNLOAD_URL="https://packagecontrol.io/Package%20Control.sublime-package"
  local PKGCTRL_NAME="Package Control.sublime-package"

  if ! [[ -e "${ST_PKG_PATH}/${PKGCTRL_NAME}" ]];then
    wget -O "${ST_PKG_PATH}/${PKGCTRL_NAME}" "$PKGCTRL_DOWNLOAD_URL"
  fi

  # linking settings directory
  od_action_rm "$ST_USER_PATH"
  od_action_linkdir "$(od_pwd)/settings" "$ST_USER_PATH"
}

##################################################
# setup for osx
function od_osx_setup() {
  local ST_PATH="/Applications/Sublime Text.app"
  local ST_VERSION_NUMBER="$(subl -v | grep -o "[[:digit:]].*")"
  local ST_MAIN_VERSION="${ST_VERSION_NUMBER:0:1}"

  local ST_USER_PATH="$HOME/Library/Application Support/Sublime Text ${ST_MAIN_VERSION}/Packages/User"
  local ST_PKG_PATH="$HOME/Library/Application Support/Sublime Text ${ST_MAIN_VERSION}/Installed Packages"
  local PKGCTRL_DOWNLOAD_URL="https://packagecontrol.io/Package%20Control.sublime-package"
  local PKGCTRL_NAME="Package Control.sublime-package"

  if ! [[ -e "${ST_PKG_PATH}/${PKGCTRL_NAME}" ]];then
    wget -O "${ST_PKG_PATH}/${PKGCTRL_NAME}" "$PKGCTRL_DOWNLOAD_URL"
  fi

  # linking settings directory
  od_action_rm "$ST_USER_PATH"
  od_action_linkdir "$(od_pwd)/settings" "$ST_USER_PATH"
}


##################################################
# main
od_echo_info "configuring sublime text ..."
if ! $(hash subl);then
  echo "Sublime Text is not installed!Get it at here -> http://www.sublimetext.com"
  return
fi

if od_is_osx;then
  od_osx_setup
elif od_is_ubuntu ;then
  od_ubuntu_setup
fi

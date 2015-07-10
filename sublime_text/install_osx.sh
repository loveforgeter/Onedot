#!/usr/bin/env bash

PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)
ST_PATH="/Applications/Sublime Text.app"
if ! [[ -e "$ST_PATH" ]];then
  echo "Sublime Text is not installed!Get it at here -> http://www.sublimetext.com"
  exit
fi

ST_VERSION_NUMBER="$(subl -v | grep -o "[[:digit:]].*")"
ST_MAIN_VERSION="${ST_VERSION_NUMBER:0:1}"

ST_USER_PATH="$HOME/Library/Application Support/Sublime Text ${ST_MAIN_VERSION}/Packages/User"
ST_PKG_PATH="$HOME/Library/Application Support/Sublime Text ${ST_MAIN_VERSION}/Installed Packages"
PKGCTRL_DOWNLOAD_URL="https://packagecontrol.io/Package%20Control.sublime-package"
PKGCTRL_NAME="Package Control.sublime-package"

if ! [[ -e "${ST_PKG_PATH}/${PKGCTRL_NAME}" ]];then
  wget -O "${ST_PKG_PATH}/${PKGCTRL_NAME}" "$PKGCTRL_DOWNLOAD_URL"
fi

# linking settings directory
rm -rfv "$ST_USER_PATH"
ln -Ffsv "${PWD}/settings" "$ST_USER_PATH"

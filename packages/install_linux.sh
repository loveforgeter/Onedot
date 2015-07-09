#!/bin/bash
set -e
if ! [[ -d $SCRIPT_PATH ]];then
	echo "SCRIPT_PATH not exist!"
	exit
fi

source $SCRIPT_PATH/utils.sh

if !$(IsUbuntu);then
	echo "Only works on ubuntu"
	exit
fi

# ask for su permission
sudo -v

echo "Installing softwares"

SOFTWARES="
 vim
 git
 build-essential
 gcc
 g++
 gdb
"

sudo apt-get install -y $SOFTWARES
echo "All softwares installed!"

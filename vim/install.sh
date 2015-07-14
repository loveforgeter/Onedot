#!/usr/bin/env bash

od_bot_normal "configuring vim"
od_rm $HOME/.vim
od_linkdir $(od_pwd)/vim $HOME/.vim
od_link $(od_pwd)/vimrc $HOME/.vimrc
od_bot_done
od_echo_return
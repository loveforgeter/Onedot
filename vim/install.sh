#!/usr/bin/env bash

od_echo_info "configuring vim ..."
od_action_rm $HOME/.vim
od_action_linkdir $(od_pwd)/vim $HOME/.vim
od_action_link $(od_pwd)/vimrc $HOME/.vimrc
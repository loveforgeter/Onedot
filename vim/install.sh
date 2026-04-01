#!/usr/bin/env bash

od_echo_info "configuring vim ..."

# Create required directories
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/ctrlp

# Remove old symlink if exists
od_action_rm $HOME/.vim

# Create new symlinks
od_action_linkdir $(od_pwd)/vim $HOME/.vim
od_action_link $(od_pwd)/vimrc $HOME/.vimrc

od_echo_success "Vim configuration complete"

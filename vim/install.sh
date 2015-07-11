#!/usr/bin/env bash

CURRENT_PATH=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

function od_main() {
  od_bot_normal "configuring vim"
  od_rm $HOME/.vim
  od_linkdir $CURRENT_PATH/vim $HOME/.vim
  od_link $CURRENT_PATH/vimrc $HOME/.vimrc
  od_bot_done
  od_echo_return
}

od_main $@
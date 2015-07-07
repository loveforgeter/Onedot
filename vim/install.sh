#!/bin/bash
PWD=$(cd $(dirname $0) && pwd)
rm -rfv $HOME/.vim
ln -fsv $PWD/vimrc $HOME/.vimrc
#!/usr/bin/env bash
PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)
rm -rfv $HOME/.vim
ln -fsv $PWD/vimrc $HOME/.vimrc
#!/usr/bin/env bash
return
PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)
rm -rfv $HOME/.vim
ln -fsv $PWD/vimrc $HOME/.vimrc
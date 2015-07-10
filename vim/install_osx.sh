#!/usr/bin/env bash
PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)
ln -Ffsv $PWD/vim $HOME/.vim

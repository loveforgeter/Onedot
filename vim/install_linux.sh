#!/usr/bin/env bash
PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)
ln -dfsv $PWD/vim $HOME/.vim

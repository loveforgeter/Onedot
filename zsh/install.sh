#!/usr/bin/env bash
hash zsh || (echo "zsh not installed" && exit)

PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

ln -fsv $PWD/zshrc $HOME/.zshrc
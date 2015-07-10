#!/usr/bin/env bash

PWD=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)

ln -fsv "$PWD/gitconfig" "$HOME/.gitconfig"

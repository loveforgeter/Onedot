#!/bin/bash

PWD="$( cd "$(dirname $0)" && pwd )"

ln -fsv $PWD/gitconfig $HOME/.gitconfig

#!/usr/bin/env bash

SCRIPT_DIR=$(dirname ${${(%):-%x}:A})

source "$SCRIPT_DIR/bootstrap.zsh"

test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"

test -f /usr/local/etc/profile.d/autojump.sh && source /usr/local/etc/profile.d/autojump.sh

eval "$(thefuck --alias)"

eval "$(pyenv init -)"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
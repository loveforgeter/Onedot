export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/usr/bin/env bash

SCRIPT_DIR=$(dirname ${${(%):-%x}:A})
source "$SCRIPT_DIR/bootstrap.zsh"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

[[ ! -f /Users/Final/.p10k.zsh ]] || source /Users/Final/.p10k.zsh

# ITERM2
if [[ $TERM_PROGRAM == "iTerm.app" ]]; then
    test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"
fi

eval "$(pyenv init -)"

eval "$(rbenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ibrew=/usr/local/bin/brew
alias abrew=/opt/homebrew/bin/brew

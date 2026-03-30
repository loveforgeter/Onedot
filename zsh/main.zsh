#!/usr/bin/env zsh

# =============================================================================
# Environment Variables
# =============================================================================
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH="$HOME/.local/bin:$PATH"

# =============================================================================
# Bootstrap
# =============================================================================
SCRIPT_DIR=$(dirname ${${(%):-%x}:A})
source "$SCRIPT_DIR/bootstrap.zsh"

# =============================================================================
# Python Version Manager (pyenv)
# =============================================================================
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# =============================================================================
# Ruby Version Manager (rbenv)
# =============================================================================
eval "$(rbenv init -)"

# =============================================================================
# Terminal Configuration
# =============================================================================

if [[ $TERM_PROGRAM == "iTerm.app" ]]; then
  # iTerm2 shell integration
  [[ -f "$HOME/.iterm2_shell_integration.zsh" ]] && source "$HOME/.iterm2_shell_integration.zsh"
fi

if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
  # Warp terminal - no additional config needed
  :
else
  # Powerlevel10k prompt for other terminals
  if [[ -f ~/.p10k.zsh ]]; then
    source ~/.p10k.zsh
  elif [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
fi

# =============================================================================
# Secrets (optional overrides)
# =============================================================================
[[ -f ~/.zsh.secrets ]] && source ~/.zsh.secrets

# =============================================================================
# Default Working Directory
# =============================================================================
cd ~
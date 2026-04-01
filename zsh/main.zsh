#!/usr/bin/env zsh

# =============================================================================
# Environment Variables
# =============================================================================
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# =============================================================================
# Bootstrap
# =============================================================================
ZSH_DIR=$(dirname ${${(%):-%x}:A})
source "$ZSH_DIR/bootstrap.zsh"

# =============================================================================
# Secrets (optional overrides)
# =============================================================================
[[ -f ~/.zsh.secrets ]] && source ~/.zsh.secrets

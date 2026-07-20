# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CACHE_DIR="$ZSH/cache"

# Bin
export PATH="$HOME/.local/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Prefer Neovim while keeping Vim-compatible fallbacks.
if (( $+commands[nvim] )); then
  export DEFAULT_EDITOR=nvim
elif (( $+commands[vim] )); then
  export DEFAULT_EDITOR=vim
else
  export DEFAULT_EDITOR=vi
fi

export EDITOR="$DEFAULT_EDITOR"
export VISUAL="$DEFAULT_EDITOR"
export GIT_EDITOR="$DEFAULT_EDITOR"
alias vim="$DEFAULT_EDITOR"
alias vi="$DEFAULT_EDITOR"

# Brew
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_REQUIRE_TAP_TRUST=1
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
# export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
# export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"

# Xcode
export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CACHE_DIR="$ZSH/cache"

# Bin
export PATH="$HOME/.local/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Brew
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_REQUIRE_TAP_TRUST=1

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

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

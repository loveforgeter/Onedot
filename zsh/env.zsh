export PATH=$HOME/.local/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH

# Xcode
export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

# LLVM
export PATH=/usr/local/opt/llvm/bin:$PATH

# Homebrew
BREW_BIN=/opt/homebrew/bin
BREW_SBIN=/opt/homebrew/sbin
export PATH=$BREW_BIN:$BREW_SBIN:$PATH
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_INSTALL_FROM_API=1

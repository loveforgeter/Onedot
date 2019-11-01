LOCAL_BIN=/usr/local/bin
LOCAL_SBIN=/usr/local/sbin
USER_BIN=$HOME/.bin
export PATH=$USER_BIN:$LOCAL_BIN:$LOCAL_SBIN:$CARGO_BIN:$PATH

# Xcode
export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# Rust
CARGO_BIN=$HOME/.cargo/bin
export PATH=$CARGO_BIN:$PATH

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

# Flutter & Dart
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export FLUTTER_ROOT=$HOME/Cellar/flutter
export FLUTTER_HOME=$HOME/Cellar/flutter/bin
FLUTTER_PUB_BIN=$FLUTTER_ROOT/.pub-cache/bin
export PATH=$FLUTTER_PUB_BIN:$FLUTTER_HOME:$PATH

PUB_BIN=$HOME/.pub-cache/bin
export PATH=$PUB_BIN:$PATH

# LLVM
LLVM_BIN=/usr/local/opt/llvm/bin
export PATH=$LLVM_BIN:$PATH

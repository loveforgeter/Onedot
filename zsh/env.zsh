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

export FLUTTER_ROOT=/opt/flutter
export FLUTTER_HOME=$FLUTTER_ROOT/bin
export PATH=$FLUTTER_HOME:$PATH

FLUTTER_DART_ROOT=$FLUTTER_HOME/cache/dart-sdk
FLUTTER_DART_HOME=$FLUTTER_DART_ROOT/bin
export PATH=$FLUTTER_DART_HOME:$PATH

# LLVM
LLVM_BIN=/usr/local/opt/llvm/bin
export PATH=$LLVM_BIN:$PATH

# depot_tools
export PATH=/opt/depot_tools:$PATH

# WebP
export PATH=/opt/webp/bin:$PATH
#!/usr/bin/env bash
hash brew || (echo "brew not installed" && exit)

# common used packages
PACKAGES=(
astyle
autoconf
automake
clang-format
cmake
coreutils
cscope
ctags
gcc
httpie
node
openssl
pkg-config
python
python3
ruby
sqlite
vim
wget
xctool
)

for PACKAGE in ${PACKAGES[*]};do
  brew install $PACKAGE
done
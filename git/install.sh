#!/usr/bin/env bash

function od_main() {
  od_bot "configuring git ..."
  od_link "$(od_pwd)/gitconfig" "$HOME/.gitconfig"
}

od_main $@

unset od_main
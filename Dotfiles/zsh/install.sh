#!/usr/bin/env bash

od_echo_info "configuring zsh ..."
hash zsh || (od_echo_error "zsh not found!" && return)
od_action_link "$(od_pwd)/zshrc" "$HOME/.zshrc"
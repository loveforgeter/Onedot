#!/usr/bin/env bash
hash brew && return
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

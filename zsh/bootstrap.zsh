# ZSH Configuration

PWD=$(dirname ${${(%):-%x}:A})

# use antigen to manage zsh plugins
source $PWD/antigen.zsh

# beautiful ls colors
# source $PWD/dircolors.zsh

# env
source $PWD/env.zsh

# keybindings
source $PWD/keybindings.zsh

# user custom enviroment
source $PWD/user.zsh 2> /dev/null

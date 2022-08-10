PWD=$(dirname ${${(%):-%x}:A})

# source $PWD/dircolors.zsh
source $PWD/antigen.zsh
source $PWD/env.zsh
source $PWD/keybindings.zsh
source $PWD/aliases.zsh
source $PWD/functions.zsh
test -f $PWD/user.zsh && source $PWD/user.zsh
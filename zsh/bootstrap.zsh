ZSH_DIR=$(dirname ${${(%):-%x}:A})

source $ZSH_DIR/env.zsh
source $ZSH_DIR/antigen.zsh
source $ZSH_DIR/keybindings.zsh
source $ZSH_DIR/aliases.zsh
source $ZSH_DIR/functions.zsh
test -f $ZSH_DIR/user.zsh && source $ZSH_DIR/user.zsh
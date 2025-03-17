PWD="$( cd "$(dirname $0)" && pwd )"

source $PWD/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle autojump
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle composer
antigen bundle copyfile
antigen bundle copypath
antigen bundle dirhistory
antigen bundle extract
antigen bundle eza
antigen bundle fzf
antigen bundle git
antigen bundle history
antigen bundle Homebrew/homebrew-services
antigen bundle laravel
antigen bundle macos
antigen bundle node
antigen bundle npm
antigen bundle pip
antigen bundle rbenv
antigen bundle safe-paste
antigen bundle sudo
antigen bundle thefuck
antigen bundle web-search
antigen bundle z

# Other bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
antigen theme romkatv/powerlevel10k

antigen apply

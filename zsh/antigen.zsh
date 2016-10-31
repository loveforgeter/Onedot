PWD="$( cd "$(dirname $0)" && pwd )"

source $PWD/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle git-flow

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
# antigen theme https://gist.github.com/ec8dfabce7f1fc5ef77e.git agnoster
antigen theme oskarkrawczyk/honukai-iterm-zsh honukai

antigen apply

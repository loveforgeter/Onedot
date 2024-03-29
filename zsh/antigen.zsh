PWD="$( cd "$(dirname $0)" && pwd )"

source $PWD/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle history
antigen bundle command-not-found

antigen bundle colorize
antigen bundle colored-man-pages

antigen bundle Homebrew/homebrew-services
antigen bundle composer
antigen bundle laravel
antigen bundle pip

# Other bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
antigen theme romkatv/powerlevel10k
# antigen theme oskarkrawczyk/honukai-iterm-zsh honukai

antigen apply

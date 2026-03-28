PWD="$( cd "$(dirname $0)" && pwd )"

source $PWD/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle autojump
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle composer
antigen bundle git
antigen bundle history
antigen bundle Homebrew/homebrew-services
antigen bundle laravel
antigen bundle pip
antigen bundle pyenv
antigen bundle rbenv
antigen bundle uv
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

PWD="$( cd "$(dirname $0)" && pwd )"

export TERM=xterm-256color
if [[ $(uname -s) == "Darwin" ]];then
  if $(hash brew) && $(brew list | grep -q coreutils);then
    eval $(gdircolors $PWD/dircolors/dircolors.ansi-dark)
    alias ls='gls --color=auto'
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  else
    export CLICOLOR=1
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
    alias ls='ls -G'
  fi
else
  eval $(dircolors $PWD/dircolors/dircolors.ansi-dark)
  alias ls='ls --color=auto'
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
fi

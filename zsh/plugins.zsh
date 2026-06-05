# =============================================================================
# oh-my-zsh plugins
# =============================================================================

plugins=(
  aliases brew colored-man-pages colorize command-not-found
  composer copyfile copypath dirhistory extract
  eza fzf gcloud git gitignore history
  httpie laravel macos man nmap node npm
  pip pod rbenv safe-paste sudo thefuck
  starship vscode web-search xcode zoxide
  bun zsh-autosuggestions zsh-completions zsh-history-substring-search
  zsh-syntax-highlighting
)

# Plugin Settings
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'header' yes
zstyle ':omz:plugins:eza' 'hyperlink' yes

source "$ZSH/oh-my-zsh.sh"
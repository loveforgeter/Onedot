# Onedot

> Amazing dotfiles for macOS and Ubuntu

A curated collection of dotfiles and development environment configurations for Zsh, Vim, and more.

## Features

- **Zsh Shell** - Powered by Antigen plugin manager with oh-my-zsh ecosystem
- **Vim Editor** - Vundle-managed plugins with modular configuration
- **Powerlevel10k** - Fast and feature-rich Zsh theme
- **Cross-platform** - macOS (primary) and Ubuntu support

## Quick Start

### Installation

```bash
# Clone the repository
git clone --recursive https://github.com/final/One.git ~/One

# Run the bootstrap script to install everything
~/One/Dotfiles/bootstrap
```

### Manual Installation

```bash
# Install Zsh configuration
source ~/One/Dotfiles/zsh/install.sh

# Install Vim configuration
source ~/One/Dotfiles/vim/install.sh
```

## Structure

```
One/
├── Dotfiles/
│   ├── lib                 # Shared utility functions
│   ├── zsh/                # Zsh configuration
│   │   ├── bootstrap.zsh   # Main entry point
│   │   ├── antigen.zsh     # Plugin definitions
│   │   ├── env.zsh         # Environment variables
│   │   ├── aliases.zsh     # Shell aliases
│   │   └── functions.zsh   # Shell functions
│   └── vim/                # Vim configuration
│       ├── vim/
│       │   └── vimrcs/     # Modular vim configs
│       ├── vimrc           # Vim entry point
│       └── install.sh
├── fonts/                  # Powerline fonts
├── Xcode-Themes/           # Xcode color schemes
└── Xcode-Snippets/         # Xcode code snippets
```

## Included Tools

### Zsh Plugins

| Plugin | Description |
|--------|-------------|
| `autojump` | Fast directory navigation |
| `git` | Git aliases and functions |
| `pyenv` / `rbenv` | Python/Ruby version management |
| `zsh-syntax-highlighting` | Real-time syntax highlighting |
| `zsh-autosuggestions` | Fish-like autosuggestions |
| `zsh-history-substring-search` | History search |
| `powerlevel10k` | Modern Zsh theme |

### Vim Plugins

| Plugin | Description |
|--------|-------------|
| `vim-airline` | Status bar |
| `nerdtree` | File explorer |
| `tagbar` | Tags browser |
| `ctrlp` | Fuzzy file finder |
| `syntastic` | Syntax checking |
| `vim-go` | Go development |
| `emmet-vim` | HTML/CSS snippets |
| `vim-gitgutter` | Git diff in gutter |
| `onedark.vim` | Color scheme |

## Environment

Configured support for:

- **Homebrew** - macOS package manager
- **pyenv** - Python version management
- **Rust/Cargo** - Rust toolchain
- **Android SDK** - Android development
- **Flutter/Dart** - Flutter framework
- **LLVM** - Compiler toolchain

## Requirements

- macOS 10.12+ or Ubuntu 16.04+
- Zsh 5.0+
- Vim 8.0+
- Git

## License

MIT

# Dotfiles

> Amazing dotfiles for macOS and Ubuntu

A curated collection of dotfiles and development environment configurations for Zsh, Vim, and more.

## Features

- **Zsh Shell** - Native oh-my-zsh configuration with modular plugins
- **Vim Editor** - vim-plug-managed plugins with modular configuration
- **Powerlevel10k** - Fast and feature-rich Zsh theme
- **Cross-platform** - macOS (primary) and Ubuntu support

## Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/loveforgeter/Dotfiles.git ~/Dotfiles

# Run the installer to install everything
~/Dotfiles/install
```

### Manual Installation

```bash
# Install Zsh configuration
source ~/Dotfiles/zsh/install.sh

# Install Vim configuration
source ~/Dotfiles/vim/install.sh
```

## Structure

```
Dotfiles/
├── zsh/                    # Zsh configuration
│   ├── bootstrap.zsh       # Main entry point
│   ├── plugins.zsh         # Plugin definitions
│   ├── env.zsh             # Environment variables
│   ├── aliases.zsh         # Shell aliases
│   └── functions.zsh       # Shell functions
├── vim/                    # Vim configuration
│   ├── vim/
│   │   └── vimrcs/         # Modular Vim configs
│   ├── vimrc               # Vim entry point
│   └── install.sh
└── install                 # Install all components
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
| `fzf.vim` | Fuzzy file, buffer, and history finder |
| `vim-fugitive` | Git integration |
| `vim-gitgutter` | Git diff in gutter |
| `vim-airline` | Status bar |
| `catppuccin/vim` | Catppuccin Mocha color scheme |

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

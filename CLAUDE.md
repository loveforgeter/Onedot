# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Dotfiles** - A collection of development environment configurations for macOS (Darwin) and Ubuntu, primarily focused on:
- Zsh shell configuration with native oh-my-zsh plugins
- Vim editor configuration with vim-plug plugin manager
- Development tool configurations

## Installation & Setup

### Bootstrap (run once)
```bash
# Run all install scripts
./install
```

### Individual component installation
```bash
# Zsh
source zsh/install.sh

# Vim
source vim/install.sh
```

## Architecture

### Directory Structure
```
Dotfiles/
├── vim/
│   ├── vim/
│   │   └── vimrcs/       # Modular Vim config
│   ├── vimrc             # Main Vim entry point
│   └── install.sh
├── zsh/
│   ├── bootstrap.zsh     # Sources all Zsh modules
│   ├── plugins.zsh       # Plugin definitions
│   ├── main.zsh          # Entry point
│   ├── env.zsh           # Environment variables
│   ├── aliases.zsh       # Shell aliases
│   ├── functions.zsh     # Shell functions
│   └── keybindings.zsh
└── install               # Install all components
```

### Zsh Configuration Flow
1. `main.zsh` - Entry point, sources `bootstrap.zsh`
2. `bootstrap.zsh` - Sources plugins, env, keybindings, aliases, functions, user.zsh (optional)
3. `plugins.zsh` - Defines oh-my-zsh plugins and plugin settings

### Vim Configuration Flow
1. `vimrc` - Sets runtimepath, sources modular configs from `vimrcs/`
2. `vimrcs/plugins.vim` - vim-plug plugin definitions
3. `vimrcs/basic.vim` - Core vim settings (colors, indentation, search)
4. `vimrcs/key_map.vim` - Leader mappings (`,` as leader), window/buffer management
5. `vimrcs/plugin_config.vim` - Plugin-specific configs (Airline, FZF, Git, and Catppuccin)
6. `vimrcs/functions.vim` - Utility functions (trim whitespace, sudo save)

## Key Tools & Dependencies

| Tool | Purpose |
|------|---------|
| **oh-my-zsh** | Zsh plugin ecosystem |
| **vim-plug** | Vim plugin manager |
| **Homebrew** | macOS package manager |
| **pyenv** | Python version management |
| **Powerlevel10k** | Zsh theme |

## Common Commands

```bash
# Vim: Install plugins
:PlugInstall

# Vim: Update plugins
:PlugUpdate

# Vim: Clean unused plugins
:PlugClean
```

## Platform Notes

- Primary target: **macOS (Darwin)** - Homebrew paths, Xcode, Android SDK, Flutter configured
- Secondary: **Ubuntu** - apt-get fallbacks in installation helpers
- Uses Chinese mirrors for Homebrew bottles and Flutter/Dart (tuna.tsinghua.edu.cn)
- Secrets loaded from `~/.zshrc.secrets` if present

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Onedot** - A collection of dotfiles for macOS (Darwin) and Ubuntu, primarily focused on:
- Zsh shell configuration with Antigen plugin manager
- Vim editor configuration with Vundle plugin manager
- Powerline fonts, Xcode themes/snippets, and development tool configs

## Installation & Setup

### Bootstrap (run once)
```bash
# Initialize submodules and run all install scripts
./Dotfiles/bootstrap
```

### Individual component installation
```bash
# Zsh
source Dotfiles/zsh/install.sh

# Vim
source Dotfiles/vim/install.sh
```

## Architecture

### Directory Structure
```
One/
├── Dotfiles/
│   ├── lib              # Shared bash functions (os detection, colors, actions)
│   ├── vim/
│   │   ├── vim/
│   │   │   ├── vimrcs/  # Modular vim config (basic, plugins, keymaps, functions)
│   │   │   └── plugins/ # Vundle-managed plugins (Vundle.vim tracked, others gitignored)
│   │   ├── vimrc        # Main vim entry point
│   │   └── install.sh
│   └── zsh/
│       ├── bootstrap.zsh  # Sources all zsh modules
│       ├── antigen.zsh    # Plugin definitions (oh-my-zsh based)
│       ├── main.zsh       # Entry point (locale, PATH, powerlevel10k, brew, pyenv)
│       ├── env.zsh        # Environment variables (Brew, Android, Flutter, Rust, LLVM)
│       ├── aliases.zsh    # Shell aliases
│       ├── functions.zsh  # Shell functions (proxy, gitignore.io)
│       └── keybindings.zsh
├── Dotfiles/fonts/    # Powerline fonts (git submodule)
├── Xcode-Themes/
└── Xcode-Snippets/
```

### Zsh Configuration Flow
1. `main.zsh` - Entry point, sources `bootstrap.zsh`
2. `bootstrap.zsh` - Sources antigen, env, keybindings, aliases, functions, user.zsh (optional)
3. `antigen.zsh` - Defines oh-my-zsh bundles: autojump, git, pyenv, zsh-syntax-highlighting, etc.

### Vim Configuration Flow
1. `vimrc` - Sets runtimepath, sources modular configs from `vimrcs/`
2. `vimrcs/plugins.vim` - Vundle plugin definitions
3. `vimrcs/basic.vim` - Core vim settings (colors, indentation, search)
4. `vimrcs/key_map.vim` - Leader mappings (`,` as leader), window/buffer management
5. `vimrcs/plugin_config.vim` - Plugin-specific configs (syntastic, vim-go, airline)
6. `vimrcs/functions.vim` - Utility functions (trim whitespace, sudo save)

## Key Tools & Dependencies

| Tool | Purpose |
|------|---------|
| **Antigen** | Zsh plugin manager (oh-my-zsh ecosystem) |
| **Vundle** | Vim plugin manager |
| **Homebrew** | macOS package manager |
| **pyenv** | Python version management |
| **Powerlevel10k** | Zsh theme |

## Common Commands

```bash
# Vim: Install plugins
:PluginInstall

# Vim: Update plugins
:PluginUpdate

# Vim: Clean unused plugins
:PluginClean
```

## Platform Notes

- Primary target: **macOS (Darwin)** - Homebrew paths, Xcode, Android SDK, Flutter configured
- Secondary: **Ubuntu** - apt-get fallbacks in lib functions
- Uses Chinese mirrors for Homebrew bottles and Flutter/Dart (tuna.tsinghua.edu.cn)
- Secrets loaded from `~/.zshrc.secrets` if present

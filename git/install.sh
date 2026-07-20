#!/usr/bin/env bash

# Link global gitconfig
if [[ -e "$HOME/.gitconfig" && ! -L "$HOME/.gitconfig" ]]; then
  backup="$HOME/.gitconfig.backup.$(date +%Y%m%d%H%M%S)"
  mv -- "$HOME/.gitconfig" "$backup"
fi
od_action_link "$(od_pwd)/git/gitconfig" "$HOME/.gitconfig"

# Create global .gitignore if not exists
if [ ! -f "$HOME/.gitignore_global" ]; then
  cat > "$HOME/.gitignore_global" << 'EOF'
*~
.DS_Store
*.log
*.swp
*.swo
*#
EOF
  od_echo_success "Created ~/.gitignore_global"
fi

od_echo_success "Git configuration installed"

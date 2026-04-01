#!/usr/bin/env bash

od_echo_info "configuring git ..."

# Link global gitconfig
od_action_link "$(od_pwd)/gitconfig" "$HOME/.gitconfig"

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

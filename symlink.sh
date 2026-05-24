#!/bin/bash

# Symlink script for macdots
# Creates symlinks from macdots to home directory

set -e

MACDOTS="$HOME/macdots"
BACKUP_DIR="$HOME/.macdots_backup"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Setting up symlinks...${NC}"

# Create backup directory
if [ -d "$BACKUP_DIR" ]; then
    echo -e "${YELLOW}Backup directory already exists, skipping backup${NC}"
else
    mkdir -p "$BACKUP_DIR"
    echo -e "${GREEN}Created backup directory: $BACKUP_DIR${NC}"
fi

# Function to backup and symlink
backup_and_symlink() {
    local source="$1"
    local target="$2"
    local target_name=$(basename "$target")

    if [ -L "$target" ]; then
        echo "Removing existing symlink: $target"
        rm "$target"
    elif [ -f "$target" ] || [ -d "$target" ]; then
        echo "Backing up: $target -> $BACKUP_DIR/$target_name"
        mv "$target" "$BACKUP_DIR/$target_name"
    fi

    echo "Symlinking: $source -> $target"
    ln -s "$source" "$target"
}

# Symlink .zshrc
backup_and_symlink "$MACDOTS/home/.zshrc" "$HOME/.zshrc"

# Symlink config directories
for config_dir in zsh nvim ghostty; do
    if [ -d "$MACDOTS/config/$config_dir" ]; then
        backup_and_symlink "$MACDOTS/config/$config_dir" "$HOME/.config/$config_dir"
    fi
done

echo -e "${GREEN}Symlinks created successfully!${NC}"
echo -e "${YELLOW}Note: Run 'source ~/.zshrc' to apply changes${NC}"

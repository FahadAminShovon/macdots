#!/bin/bash

# Install script for macdots
# Installs dependencies and sets up symlinks

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Installing macdots dependencies...${NC}"

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo -e "${YELLOW}Homebrew not found. Installing...${NC}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
echo -e "${GREEN}Updating Homebrew...${NC}"
brew update

# Install all packages from Brewfile
echo -e "${GREEN}Installing packages from Brewfile...${NC}"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
brew bundle --file "$SCRIPT_DIR/Brewfile"

# Run symlink script
echo -e "${GREEN}Setting up symlinks...${NC}"
"$SCRIPT_DIR/symlink.sh"

echo -e "${GREEN}Installation complete!${NC}"
echo -e "${YELLOW}Next steps:${NC}"
echo "  1. Restart your terminal or run 'source ~/.zshrc'"
echo "  2. Run 'p10k configure' to set up Powerlevel10k theme"
echo "  3. Run 'gh auth login' to authenticate GitHub CLI"
echo "  4. Run '~/.macdots/gh-aliases.sh' to set up gh aliases"
echo "  5. Run '~/.macdots/macos.sh' for optional macOS settings"

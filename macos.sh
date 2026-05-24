#!/bin/bash

# macOS defaults setup
# Prompts before applying any system settings

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}macOS System Settings${NC}"
echo "The following settings will be applied:"
echo ""

# Key repeat - disable press-and-hold for key repeat
echo "1. Disable press-and-hold (enable key repeat)"
echo "   - Allows holding down keys to repeat instead of showing accent menu"
echo ""

read -p "Apply this setting? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    defaults write -g ApplePressAndHoldEnabled -bool false
    echo -e "${GREEN}✓ Key repeat enabled${NC}"
else
    echo -e "${YELLOW}✗ Skipped${NC}"
fi

echo ""
echo -e "${GREEN}macOS settings complete!${NC}"
echo -e "${YELLOW}Note: Some settings may require restarting apps to take effect.${NC}"

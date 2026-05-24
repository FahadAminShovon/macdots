#!/bin/bash

# Font installation script for .macdots

set -e

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Installing Cascadia Code font...${NC}"

brew install --cask font-cascadia-code

echo -e "${GREEN}Font installed successfully!${NC}"
echo "You may need to restart your terminal/editor to see the new font."

# .macdots

Personal dotfiles for macOS.

## Structure

```
.macdots/
├── Brewfile         # Homebrew packages
├── install.sh       # Main installer (brew packages + symlinks)
├── symlink.sh       # Just creates symlinks
├── home/
│   └── .zshrc       # Zsh configuration
└── config/
    ├── zsh/         # Zsh modules (env, plugins, aliases, etc.)
    ├── nvim/        # Neovim configuration (NvChad)
    └── ghostty/     # Ghostty terminal config
```

## Installation

```bash
# Clone to home directory (note the dot prefix)
git clone https://github.com/FahadAminShovon/macdots.git ~/.macdots
cd ~/.macdots

# Run installer (installs brew packages + creates symlinks)
./install.sh
```

## What gets installed

**Shell & Terminal:**
- powerlevel10k (zsh theme)
- zsh-autosuggestions
- zsh-syntax-highlighting
- zoxide (smart cd)

**CLI Tools:**
- eza (modern ls)
- bat (modern cat)
- fd (fast find)
- ripgrep (fast grep)
- fzf (fuzzy finder)

**Editors & Dev:**
- neovim
- lazygit
- gh (GitHub CLI)
- fnm (Node.js version manager)

## Post-install

1. Restart terminal or `source ~/.zshrc`
2. Run `p10k configure` for Powerlevel10k theme setup
3. Run `gh auth login` to authenticate GitHub CLI

## Just update symlinks

If you already have packages installed and just want to update symlinks:

```bash
./symlink.sh
```

## Just install packages

To only install Homebrew packages without touching symlinks:

```bash
brew bundle --file ~/.macdots/Brewfile
```

## Backup

Existing files are backed up to `~/.macdots_backup/` before symlinking.

# .macdots

Personal dotfiles for macOS.

## Structure

```
.macdots/
├── Brewfile         # Homebrew packages + fonts
├── install.sh       # Main installer (brew packages + symlinks + macOS settings)
├── symlink.sh       # Just creates symlinks
├── macos.sh         # Optional macOS system settings
├── gh-aliases.sh    # GitHub CLI aliases
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

**Fonts:**
- Cascadia Code
- JetBrainsMono Nerd Font

## Post-install

1. Restart terminal or `source ~/.zshrc`
2. Run `p10k configure` for Powerlevel10k theme setup
3. Run `gh auth login` to authenticate GitHub CLI
4. Run `~/.macdots/gh-aliases.sh` to set up gh aliases
5. Set fonts in VSCode/terminal:
   - Cascadia Code for editor
   - JetBrainsMono Nerd Font for terminal

See [GH-ALIASES.md](GH-ALIASES.md) for the full list of GitHub CLI aliases.

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

## macOS System Settings

Run `macos.sh` to apply optional macOS defaults (prompts before each change):

```bash
~/.macdots/macos.sh
```

**Currently configured:**
- Disable press-and-hold (enables key repeat for better coding experience)

## Backup

Existing files are backed up to `~/.macdots_backup/` before symlinking.

## Troubleshooting

If scripts don't run, make them executable:
```bash
chmod +x ~/.macdots/*.sh
```

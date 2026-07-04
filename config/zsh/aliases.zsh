# Modern ls: eza
alias ls='eza --group-directories-first --icons=auto'
alias ll='eza -alF --group-directories-first --icons=auto'
alias la='eza -a --group-directories-first --icons=auto'
alias lt='eza -a --tree --level=2 --icons=auto'

# Modern cat: bat
alias cat='bat --style=plain --paging=never'
alias catt='bat -p'          # plain
alias catn='bat -n'          # with line numbers

# Neovim as vi/vim
alias nvimdiff='nvim -d'
alias vi='nvim'
alias vim='nvim'

# killport <port> — a function, kept in its own file, sourced here.
[[ -r "${0:A:h}/killport.zsh" ]] && source "${0:A:h}/killport.zsh"

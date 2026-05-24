export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# History
HISTSIZE=5000
SAVEHIST=5000
HISTFILE="${HOME}/.zsh_history"
setopt HIST_IGNORE_DUPS SHARE_HISTORY INC_APPEND_HISTORY

# Options
setopt AUTO_CD AUTO_PUSHD CORRECT

# Paths
export PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"
export EDITOR="nvim"
export VISUAL="nvim"

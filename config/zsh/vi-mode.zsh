# Minimal, non-intrusive vi mode for Zsh

# 1) Enable vi keybindings
bindkey -v

# 2) Insert -> Command via 'jj' only
bindkey -M viins 'jj' vi-cmd-mode
# Keep Ctrl+F as forward-char (both modes)
bindkey -M viins '^F' forward-char
bindkey -M vicmd '^F' forward-char

# 3) Optional: cursor shape by mode (safe; doesn't map keys)
# Comment these out if your terminal doesn't support it
function zle-keymap-select {
  case $KEYMAP in
    vicmd)      print -n '\e[1 q' ;;  # block
    viins|main) print -n '\e[5 q' ;;  # beam
  esac
}
function zle-line-init {
  zle -K viins
  print -n '\e[5 q'
}
zle -N zle-keymap-select
zle -N zle-line-init

# 4) Optional: better word style (no keybinds)
autoload -Uz select-word-style
select-word-style bash
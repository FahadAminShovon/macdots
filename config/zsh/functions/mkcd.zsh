# mkcd <dir> — make a directory (and parents) then cd into it.
mkcd() {
  mkdir -p "$1" && cd "$1"
}

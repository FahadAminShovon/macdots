# Barrel: source every function file in this folder (except this index).
# Drop a new <name>.zsh here and it's loaded automatically — no wiring needed.
for _fn_file in "${0:A:h}"/*.zsh; do
  [[ "$_fn_file" == "${0:A:h}/index.zsh" ]] && continue
  source "$_fn_file"
done
unset _fn_file

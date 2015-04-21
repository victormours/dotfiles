function zle-line-finish {
  region_highlight+=("0 $#BUFFER fg=blue")
}
zle -N zle-line-finish

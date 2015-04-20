function check-alias-and-accept {
  if [ $BUFFER ]; then

    ALIAS=`alias -L | grep -e "=[\'\"]\?${BUFFER}[\'\"]\?$"`

    if [ $ALIAS ]; then
      echo
      echo "You have this alias:"
      echo
      echo $ALIAS
      echo
      echo "Use it!"

      zle kill-whole-line
      zle reset-prompt
    else
      region_highlight+=("0 $#BUFFER fg=green")
      zle accept-line
    fi
  else
    region_highlight+=("0 $#BUFFER fg=green")
    zle accept-line
  fi
}

zle -N check-alias-and-accept
bindkey '^J' check-alias-and-accept
bindkey '^M' check-alias-and-accept

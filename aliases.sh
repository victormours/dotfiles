function display_command {
  print -nP $PROMPT
  echo $*
}


declare -A EXPLICIT_ALIASES
function explicit_alias {
  alias=$1
  command=$2
  alias $alias=$command
}

preexec_functions=()
function expand_aliases {
  input_command=$1
  expanded_command=$2
  if [ $input_command != $expanded_command ]; then
    print -nP $PROMPT
    echo $2
  fi
}
preexec_functions+=expand_aliases

for file in ~/.dotfiles/*/aliases.sh; do
  source "$file"
done

# Edit and reload aliases
explicit_alias 'ae' 'vim $HOME/.dotfiles/aliases.sh'
explicit_alias 'ar' 'source $HOME/.dotfiles/aliases.sh'

# Custom utils
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias gruntt 'grunt test'
explicit_alias gubu 'gulp build'


explicit_alias mail 'open https://mail.google.com'

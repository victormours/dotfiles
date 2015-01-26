# Automatically expand all aliases:
# - don't forget the actual commands
# - don't confuse your pairing partner

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
function ae {
  alias_category=$1
  vim $HOME/.dotfiles/$alias_category/aliases.sh
}

alias ar='source $HOME/.dotfiles/aliases.sh'


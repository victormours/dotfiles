# Automatically expand all aliases:
# - don't forget the actual commands
# - don't confuse your pairing partner

preexec_functions=()

function expand_aliases {
  input_command=$1
  expanded_command=$2
  if [ $input_command != $expanded_command ]; then
    print -nP $PROMPT
    echo $expanded_command
  fi
}

preexec_functions+=expand_aliases



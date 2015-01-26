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
alias ae='vim $HOME/.dotfiles/aliases.sh'
alias ar='source $HOME/.dotfiles/aliases.sh'

# Custom utils
alias prs='touch tmp/restart.txt; echo "Pow restarted"'
alias gruntt='grunt test'
alias gubu='gulp build'


alias mail='open https://mail.google.com'

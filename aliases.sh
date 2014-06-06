function display_command {
  print -nP $PROMPT
  echo $*
}

function explicit_alias {
  alias=$1
  command=$2
  eval "function $alias {
    display_command '$command' \$*
    $command
  }"
}

source ~/dev/dotfiles/git/aliases.sh
source ~/dev/dotfiles/projects/aliases.sh
source ~/dev/dotfiles/ssh/aliases.sh

# Edit and reload aliases
explicit_alias 'ae' 'mvim ~/dev/dotfiles/aliases.sh'
explicit_alias 'ar' 'source ~/dev/dotfiles/aliases.sh'

# Custom utils
explicit_alias c 'cd'
explicit_alias l 'less -r'
explicit_alias bd 'bundle'
explicit_alias be 'bundle exec'
explicit_alias ber 'bundle exec rspec'
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias rs 'rspec'
explicit_alias rp 'bundle exec rspec-preloader'
explicit_alias gruntt 'grunt test'
explicit_alias psg 'ps aux | grep'


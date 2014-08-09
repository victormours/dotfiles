function display_command {
  print -nP $PROMPT
  echo $*
}

function explicit_alias {
  alias=$1
  command=$2
  alias $alias="display_command '$command'; $command"
}

source ~/dev/dotfiles/*/aliases.sh

# Edit and reload aliases
explicit_alias 'ae' 'vim $HOME/.dotfiles/aliases.sh'
explicit_alias 'ar' 'source $HOME/.dotfiles/aliases.sh'

# Custom utils
explicit_alias bd 'bundle'
explicit_alias be 'bundle exec'
explicit_alias ber 'bundle exec rspec'
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias rs 'rspec'
explicit_alias rp 'bundle exec rspec-preloader'
explicit_alias gruntt 'grunt test'
explicit_alias gubu 'gulp build'
explicit_alias psg 'ps aux | grep'
explicit_alias s 'ssh'

# deploying
explicit_alias csd 'bundle exec cap staging deploy'

explicit_alias mail 'open https://mail.google.com'

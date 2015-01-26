function open_project {
  project_name=$1
  autojump $project_name
  mvim .
}

alias o=open_project

function md {
  directory_name=$1
  mkdir $1
  cd $1
}

function top_commands {
  cat ~/.zsh_history|cut -d ';' -f 2- 2>/dev/null |
    awk '{a[$1]++ } END{for(i in a){print a[i] " " i}}'|
    sort -rn |
    head -n20
}

alias tc=top_commands

source $HOME/.dotfiles/ruby/utils.sh
source $HOME/.dotfiles/git/utils.sh


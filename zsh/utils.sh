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

source $HOME/.dotfiles/ruby/utils.sh
source $HOME/.dotfiles/git/utils.sh


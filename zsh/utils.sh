source $HOME/.dotfiles/ruby/utils.sh
source $HOME/.dotfiles/git/utils.sh
source $HOME/.dotfiles/github/utils.sh
source $HOME/.dotfiles/docker/utils.sh

alias a="osascript -e 'tell application \"MacVim\" to activate'"
alias h="osascript -e 'tell application \"Chrome\" to activate'"
alias k="osascript -e 'tell application \"Slack\" to activate'"

alias ls='ls -Gh'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

function wifi_password {
  wifi_name=$1
  security find-generic-password -ga $wifi_name | grep “password:”
}

function project_wide_replace {
  old=$1
  new=$2
  rg -l $old | xargs -n1 sed -i '' -e s/$old/$new/g
}
alias rep=project_wide_replace

function weather {
   curl -s "http://wttr.in/${1:-Paris}" | head -n 27
}

alias localh="open souscription.enercoop.localhost:8080"

alias frm="fzf | xargs rm -v"

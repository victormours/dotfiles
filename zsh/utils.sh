source $HOME/.dotfiles/ruby/utils.sh
source $HOME/.dotfiles/git/utils.sh
source $HOME/.dotfiles/github/utils.sh
source $HOME/.dotfiles/docker/utils.sh

alias a="osascript -e 'tell application \"MacVim\" to activate'"
alias h="osascript -e 'tell application \"Chrome\" to activate'"
alias k="osascript -e 'tell application \"Slack\" to activate'"

alias ls='ls -Gh'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

function jira {
  if [ $# -eq 0 ]
    then
      open https://jobteaser.atlassian.net/browse/JT-`gcb | grep -oE '\d{4}'`
    else
      TICKET_ID=$1
      open https://jobteaser.atlassian.net/browse/JT-$TICKET_ID
    fi
}

function project_wide_replace {
  old=$1
  new=$2
  rg -l $old | xargs -n1 sed -i '' -e s/$old/$new/g
}
alias rep=project_wide_replace

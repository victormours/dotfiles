source $HOME/.dotfiles/ruby/utils.sh
source $HOME/.dotfiles/git/utils.sh
source $HOME/.dotfiles/github/utils.sh

alias a="osascript -e 'tell application \"MacVim\" to activate'"
alias h="osascript -e 'tell application \"Chrome\" to activate'"
alias k="osascript -e 'tell application \"Slack\" to activate'"

alias ls='ls -Gh'

alias "review"="open 'https://github.com/pulls?q=is%3Aopen+is%3Apr+label%3A%22Needs+Review%22+user%3Atigerlily+sort%3Acreated-asc'"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

function jira {
  TICKET_ID=$1
  open https://jobteaser.atlassian.net/browse/JT-$TICKET_ID
}

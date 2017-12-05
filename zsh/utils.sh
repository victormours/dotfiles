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

function rg_replace {
  old=$1
  new=$2
  replace_path=$3
  rg -l $old $replace_path | xargs -n1 sed -i '' -e s/$old/$new/g
}
alias rep=rg_replace

function weather {
   curl -s "http://wttr.in/${1:-Paris}" | head -n 27
}

alias frm="fzf | xargs rm -v"

fuzzy_branches() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

alias cc=fuzzy_branches

alias cir="open https://circleci.com/dashboard"

alias jo="ruby $HOME/.dotfiles/journal.rb"

# Git essentials
alias g=git
alias d='git diff'
alias s='git status'
alias c='git checkout'

alias b='git branch -v'
alias nb='git checkout -b' # new branch

alias gcm='git checkout master'
alias gd='git checkout development'

alias gfix='git add --all :/; git commit -m "fix"'

alias gpl='git pull --rebase'

alias gsh='git show'

alias gc='git add --all :/; git commit -m'
alias ga='git add'
alias gaa='git add --all :/'
alias gap='git add --patch'
alias gcim='git commit -m'
alias gci='git commit'
alias gca='git add --all :/; git commit --amend'

alias gp='git push'
alias gfp="git push -u origin \`git rev-parse --abbrev-ref HEAD\`" #git first push, for when you push a branch for the first time

alias gpo='git push origin'
alias gwip='git commit -am "wip"'

alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'

alias guns='git reset HEAD'
alias gunc='git reset --soft HEAD\^'

alias gl='git log --graph --date=short'
alias gls='git log --graph --date=short | head'

alias gri='git rebase -i'
alias grc='git rebase --continue'
alias grim='git rebase -i master'
alias grid='git rebase -i development'

alias gclone='git clone'

alias gdd='git diff development'

# Other git aliases
alias gcb='git rev-parse --abbrev-ref HEAD' #current branch
alias gdd='git diff development'
alias gdm='git diff master'
alias gi='vim .gitignore'
alias gcp='git cp'
alias gm='git merge --no-ff'
alias gmd='git merge --no-ff development'
alias gmm='git merge --no-ff master'
alias gms='git merge --squash'
alias gam='git commit --amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gf='git fetch'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gcp='git cherry pick'



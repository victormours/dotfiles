# Git essentials
alias g=git
alias gd='git diff'
alias gb='git branch -v'
alias gnb='git checkout -b' # new branch
alias gc='git checkout'
alias c='git checkout'
alias gcm='git checkout master'
alias gcd='git checkout development'
alias gfix='git add --all :/; git commit -m "fix"'

alias gplr='git pull --rebase'

alias s='git status'
alias gsh='git show'

alias gac='git add --all :/; git commit -m'
alias ga='git add'
alias gaa='git add --all :/'
alias gap='git add --patch'
alias gcim='git commit -m'
alias gci='git commit'
alias gca='git add --all :/; git commit --amend'

alias gps='git push'
alias gfp="git push -u origin \`git rev-parse --abbrev-ref HEAD\`" #git first push, for when you push a branch for the first time
alias gsb="git rev-parse --abbrev-ref HEAD" # git show branch

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

explicit_alias gdd 'git diff development'

# Other git aliases
explicit_alias gcb 'git rev-parse --abbrev-ref HEAD' #current branch
explicit_alias gdd 'git diff development'
explicit_alias gdm 'git diff master'
explicit_alias gi 'vim .gitignore'
explicit_alias gcp 'git cp'
explicit_alias gm 'git merge --no-ff'
explicit_alias gmd 'git merge --no-ff development'
explicit_alias gms 'git merge --squash'
explicit_alias gam 'git commit --amend --reset-author'
explicit_alias grv 'git remote -v'
explicit_alias grr 'git remote rm'
explicit_alias grad 'git remote add'
explicit_alias gr 'git rebase'
explicit_alias gra 'git rebase --abort'
explicit_alias ggrc 'git rebase --continue'
explicit_alias gbi 'git rebase --interactive'
explicit_alias gf 'git fetch'
explicit_alias gbd 'git b -D -w'
explicit_alias gdc 'git diff --cached -w'
explicit_alias gpub 'grb publish'
explicit_alias gtr 'grb track'
explicit_alias gpl 'git pull'
explicit_alias grs 'git reset'
explicit_alias grsh 'git reset --hard'
explicit_alias gcln 'git clean'
explicit_alias 'gclndf' 'git clean -df'
explicit_alias 'gclndfx' 'git clean -dfx'
alias gcp='git cherry pick'



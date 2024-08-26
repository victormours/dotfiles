# Git essentials
alias d='git diff'
alias s='git status'
alias c='git checkout'
# This overrides the clang compiler, but I don't use it
alias cc='git checkout -'

alias b='git branch -v'

alias cm='git checkout production'
alias gd='git checkout develop'

alias f='git add --all :/; git commit -m "fix"'
alias fp='git add --all :/; git commit -m "fix"; git push'
alias wip='git add --all :/; git commit -am "wip"'

alias l='git pull --rebase'

alias gsh='git show'

alias ga='git add'
alias aa='git add --all :/'
alias ap='git add --patch'
alias co='git commit'
alias com='git commit -m'
alias ca='git add --all :/; git commit --amend --no-edit'

alias p='git push'
alias pp='git push -u origin $(git rev-parse --abbrev-ref HEAD)'

alias st='git stash --include-untracked'
alias sp='git stash pop'

alias uns='git reset HEAD'
alias unc='git reset --soft HEAD\^'

alias gl='git log --graph --date=short --pretty=oneline --abbrev-commit'
alias gls='git log --graph --date=short --pretty=oneline --abbrev-commit -n10'

alias gri='git rebase -i'
alias grc='git rebase --continue'
alias rim='git rebase -i production'
alias rid='git rebase -i develop'

alias gclone='git clone'
alias ginit='git init'

# Other git aliases
alias gcb='git rev-parse --abbrev-ref HEAD' #current branch
alias gdd='git diff develop'
alias gdm='git diff production'
alias gi='vim .gitignore'
alias gm='git merge --no-ff'
alias gmd='git merge --no-ff develop'
alias gmm='git merge --no-ff production'
alias gms='git merge --squash'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias gf='git fetch'
alias gdc='git diff --cached -w'
alias gpl='git pull'
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gcp='git cherry-pick'
alias gcpc='git cherry-pick --continue'
alias gcpa='git cherry-pick --abort'


# Git essentials
explicit_alias g git
explicit_alias gd 'git diff'
explicit_alias gb 'git branch -v'
explicit_alias gnb 'git checkout -b' # new branch
explicit_alias gco 'git checkout'
explicit_alias gcom 'git checkout master'
explicit_alias gcod 'git checkout development'
explicit_alias gfix 'git add --all :/; git commit -m "fix"'

explicit_alias gplr 'git pull --rebase'

explicit_alias gs 'git status'
explicit_alias gsh 'git show'

explicit_alias gac 'git add --all :/; git commit -m'
explicit_alias ga 'git add'
explicit_alias gaa 'git add --all :/'
explicit_alias gap 'git add --patch'
explicit_alias gcm 'git commit -m'
explicit_alias gci 'git commit'
explicit_alias gca 'git commit --amend'

explicit_alias gps 'git push'
explicit_alias gfp "git push -u origin \`git rev-parse --abbrev-ref HEAD\`" #git first push, for when you push a branch for the first time
explicit_alias gsb "git rev-parse --abbrev-ref HEAD" # git show branch

explicit_alias gpo 'git push origin'
explicit_alias gwip 'git commit -am "wip"'

explicit_alias gst 'git stash'
explicit_alias gsp 'git stash pop'
explicit_alias gsa 'git stash apply'

explicit_alias guns 'git reset HEAD'
explicit_alias gunc 'git reset --soft HEAD\^'

explicit_alias gl 'git log --graph --date=short'
explicit_alias gls 'git log --graph --date=short | head'

explicit_alias gri 'git rebase -i'
explicit_alias grim 'git rebase -i master'
explicit_alias grid 'git rebase -i development'

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



function display_command {
  print -nP $PROMPT
  echo $*
}

function explicit_alias {
  alias=$1
  command=$2
  alias $alias="display_command '$command'; $command"
}

# Edit and reload aliases
explicit_alias 'ae' 'mvim ~/dev/dotfiles/aliases.sh'
explicit_alias 'ar' 'source ~/dev/dotfiles/aliases.sh'

# Custom utils
explicit_alias c 'cd'
explicit_alias l 'less -r'
explicit_alias bd 'bundle'
explicit_alias be 'bundle exec'
explicit_alias ber 'bundle exec rspec'
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias rs 'rspec'
explicit_alias gruntt 'grunt test'

# Git essentials
explicit_alias gd 'git diff'
explicit_alias gb 'git branch -v'
explicit_alias gnb 'git checkout -b' # new branch
explicit_alias gco 'git checkout'
explicit_alias gcom 'git checkout master'
explicit_alias gcod 'git checkout development'

explicit_alias gplr 'git pull --rebase'

explicit_alias gs 'git status'
explicit_alias gsh 'git show'

explicit_alias gac 'git add -A .; git commit -m'
explicit_alias ga 'git add -A'
explicit_alias gap 'git add --patch'
explicit_alias gcm 'git commit -m'
explicit_alias gci 'git commit'

explicit_alias gps 'git push'

explicit_alias gst 'git stash'
explicit_alias gsp 'git stash pop'
explicit_alias gsa 'git stash apply'

explicit_alias guns 'git reset HEAD'
explicit_alias gunc 'git reset --soft HEAD^'

explicit_alias gl 'git log --graph --date=short'
explicit_alias gls 'git log --graph --date=short | head'

explicit_alias gri 'git rebase -i'
explicit_alias grim 'git rebase -i master'
explicit_alias grid 'git rebase -i development'

# Other git aliases
explicit_alias gdd 'git diff development'
explicit_alias gdm 'git diff master'
explicit_alias gi 'vim .gitignore'
explicit_alias gcp 'git cp'
explicit_alias gm 'git merge'
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

# Working on projects
explicit_alias 'dotfiles' 'cd ~/dev/dotfiles; mvim'
explicit_alias 'twitterlily' 'cd ~/code/twitterlily; mvim'
explicit_alias 'cdtwitterlily' 'cd ~/code/twitterlily'
explicit_alias 'api' 'cd ~/code/api; mvim'
explicit_alias 'dashboard' 'cd ~/code/dashboard; mvim'
explicit_alias 'chefrep' 'cd ~/code/chef-repo; mvim'
explicit_alias 'fanvoice' 'cd ~/code/fanvoice; mvim'
explicit_alias 'wallmanager' 'cd ~/code/wallmanager; mvim'
explicit_alias 'front' 'cd ~/code/monitoring; mvim'
explicit_alias 'back' 'cd ~/code/monitoring-api; mvim'
explicit_alias 'bootstrap' 'cd ~/code/tigerlily-bootstrap; mvim'
explicit_alias 'blog' 'cd ~/code/tigerlily.github.io; mvim'
explicit_alias 'perf' 'cd ~/dev/perf; mvim'

# Moving to projects
explicit_alias 'code' 'cd ~/code'
explicit_alias 'cdfront' 'cd ~/code/monitoring'
explicit_alias 'cdback' 'cd ~/code/monitoring-api'
explicit_alias 'cddotfiles' 'cd ~/dev/dotfiles'
explicit_alias 'cdblog' 'cd ~/code/tigerlily.github.io'

explicit_alias 'brep' 'open https://github.com/tigerlily/monitoring-api'
explicit_alias 'frep' 'open https://github.com/tigerlily/monitoring'
explicit_alias 'bpr' 'open https://github.com/tigerlily/monitoring-api/pulls'
explicit_alias 'fpr' 'open https://github.com/tigerlily/monitoring/pulls'
explicit_alias 'twitterpr' 'open https://github.com/tigerlily/twitterlily/pulls'
explicit_alias 'bootstrappr' 'open https://github.com/tigerlily/tigerlily-bootstrap/pulls'

# SSH
explicit_alias 'sshwallmanager' 'ssh deploy@factory1.tigerlilyplatform.com'
explicit_alias 'sshtwitterlilyprod' 'ssh deploy@twitterlily.tigerlilyplatform.com'
explicit_alias 'sshtwitterlilystg' 'ssh deploy@twitterlily.staging.tigerlilyplatform.com'
explicit_alias 'sshsiprod' 'ssh deploy@socialinbox.tigerlilyplatform.com'
explicit_alias 'sshsistg' 'ssh deploy@socialinbox.staging.tigerlilyplatform.com'



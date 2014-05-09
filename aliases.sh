function display_command {
  print -nP $PROMPT
  echo $*
}

function explicit_alias {
  alias=$1
  command=$2
  alias $alias="display_command $command; $command"
}

# Moving to projects
explicit_alias 'dotfiles' 'cd ~/dev/dotfiles'
explicit_alias 'twitterlily' 'cd ~/code/twitterlily; mvim'
explicit_alias 'cdtwitterlily' 'cd ~/code/twitterlily'
explicit_alias 'api' 'cd ~/code/api; mvim'
explicit_alias 'dashboard' 'cd ~/code/dashboard; mvim'
explicit_alias 'chefrep' 'cd ~/code/chef-repo; mvim'
explicit_alias 'fanvoice' 'cd ~/code/fanvoice; mvim'
explicit_alias 'wallmanager' 'cd ~/code/wallmanager; mvim'
explicit_alias 'front' 'cd ~/code/monitoring; mvim'
explicit_alias 'back' 'cd ~/code/monitoring-api; mvim'


explicit_alias 'backpr' 'open https://github.com/tigerlily/monitoring-api/pulls'

# SSH
explicit_alias 'sshwallmanagerprod' 'echo "ssh deploy@factory1.tigerlilyplatform.com"; ssh deploy@factory1.tigerlilyplatform.com'
explicit_alias 'sshtwitterlilyprod' 'echo "ssh deploy@twitterlily.tigerlilyplatform.com"; ssh deploy@twitterlily.tigerlilyplatform.com'
explicit_alias 'sshsiprod' 'ssh deploy@socialinbox.tigerlilyplatform.com'

# Custom utils
explicit_alias bund 'bundle'
explicit_alias 'code' 'cd ~/code'
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias gri 'git rebase -i'
explicit_alias grim 'git rebase -i master'
explicit_alias grid 'git rebase -i development'
explicit_alias be 'bundle exec'
explicit_alias ber 'bundle exec rspec'
explicit_alias rs 'rspec'
explicit_alias gls 'gl | head'
explicit_alias gruntt 'grunt test'

# To set the origin branch
explicit_alias 'gfirstpush' 'eval `gpsh 2>&1 | tail -n2 | head -n1`'


# Git aliases
explicit_alias gac 'ga; gcim'
explicit_alias 'gs' 'git status'
explicit_alias gstsh 'git stash'
explicit_alias gst 'git stash'
explicit_alias gsp 'git stash pop'
explicit_alias gsa 'git stash apply'
explicit_alias gsh 'git show'
explicit_alias gshw 'git show'
explicit_alias gshow 'git show'
explicit_alias gi 'vim .gitignore'
explicit_alias gcm 'git ci -m'
explicit_alias gcim 'git ci -m'
explicit_alias gci 'git ci'
explicit_alias gco 'git co'
explicit_alias gcp 'git cp'
explicit_alias ga 'git add -A'
explicit_alias guns 'git unstage'
explicit_alias gunc 'git uncommit'
explicit_alias gm 'git merge'
explicit_alias gms 'git merge --squash'
explicit_alias gam 'git amend --reset-author'
explicit_alias grv 'git remote -v'
explicit_alias grr 'git remote rm'
explicit_alias grad 'git remote add'
explicit_alias gr 'git rebase'
explicit_alias gra 'git rebase --abort'
explicit_alias ggrc 'git rebase --continue'
explicit_alias gbi 'git rebase --interactive'
explicit_alias gl 'git l'
explicit_alias glg 'git l'
explicit_alias glog 'git l'
explicit_alias co 'git co'
explicit_alias gf 'git fetch'
explicit_alias gfch 'git fetch'
explicit_alias gd 'git diff'
explicit_alias gb 'git b'
explicit_alias gbd 'git b -D -w'
explicit_alias gdc 'git diff --cached -w'
explicit_alias gpub 'grb publish'
explicit_alias gtr 'grb track'
explicit_alias gpl 'git pull'
explicit_alias gplr 'git pull --rebase'
explicit_alias gps 'git push'
explicit_alias gpsh 'git push'
explicit_alias gnb 'git nb' # new branch aka checkout -b
explicit_alias grs 'git reset'
explicit_alias grsh 'git reset --hard'
explicit_alias gcln 'git clean'
explicit_alias 'gclndf' 'git clean -df'
explicit_alias 'gclndfx' 'git clean -dfx'

explicit_alias "dotfiles" "cd ~/dev/dotfiles; mvim"

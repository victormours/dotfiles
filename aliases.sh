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

explicit_alias 'backpr' 'open https://github.com/tigerlily/monitoring-api/pulls'

explicit_alias 'code' 'cd ~/code'

# SSH
explicit_alias 'sshwallmanagerprod' 'ssh deploy@factory1.tigerlilyplatform.com'
explicit_alias 'sshtwitterlilyprod' 'ssh deploy@twitterlily.tigerlilyplatform.com'
explicit_alias 'sshsiprod' 'ssh deploy@socialinbox.tigerlilyplatform.com'

# Custom utils
explicit_alias bd 'bundle'
explicit_alias be 'bundle exec'
explicit_alias ber 'bundle exec rspec'
explicit_alias prs 'touch tmp/restart.txt; echo "Pow restarted"'
explicit_alias rs 'rspec'
explicit_alias gruntt 'grunt test'

# Vital git aliases
explicit_alias gd 'git diff'
explicit_alias gb 'git b'
explicit_alias gnb 'git nb' # new branch aka checkout -b
explicit_alias gco 'git co'

explicit_alias gplr 'git pull --rebase'

explicit_alias gs 'git status'
explicit_alias gsh 'git show'

explicit_alias gac 'git add -A .; git commit -m'
explicit_alias ga 'git add -A'
explicit_alias gcm 'git ci -m'

explicit_alias gps 'git push'

explicit_alias gst 'git stash'
explicit_alias gsp 'git stash pop'
explicit_alias gsa 'git stash apply'

explicit_alias gu 'git uncommit; git unstage' # 'Git undo'
explicit_alias guns 'git unstage'
explicit_alias gunc 'git uncommit'

explicit_alias gl 'git l'
explicit_alias gls 'gl | head'

explicit_alias gri 'git rebase -i'
explicit_alias grim 'git rebase -i master'
explicit_alias grid 'git rebase -i development'

# To set the origin branch, kinda hacky
explicit_alias 'gfirstpush' 'eval `gpsh 2>&1 | tail -n2 | head -n1`'

# Other git aliases
explicit_alias gi 'vim .gitignore'
explicit_alias gcp 'git cp'
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
explicit_alias co 'git co'
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


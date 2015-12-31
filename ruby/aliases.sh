alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'

alias rs='bundle exec rspec'
alias rss='bundle exec spring rspec'
alias rp='bundle exec rspec-preloader'
alias rps='bundle exec rspec-preloader-server'
alias rpc='bundle exec rspec-preloader-client'

alias bec='bundle exec cucumber'

alias cop='rubocop-git'

# deploying
alias csd='bundle exec cap sandbox deploy'
alias -g deploy_this='deploy -S branch=`git rev-parse --abbrev-ref HEAD`'

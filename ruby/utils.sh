function cap_deploy_branch {
  branchname=$1
  bundle exec cap sandbox deploy -S branch=$branchname
}
alias cdb=cap_deploy_branch

function deploy_current_branch {
  cap_deploy_branch `git rev-parse --abbrev-ref HEAD`
}
alias dcb=deploy_current_branch

function open_gem {
  gem_name=$1
  (cd `bundle show $gem_name` && mvim .)
}
alias og=open_gem

function remote_shell {
  environment=$1
  bundle exec cap $environment remote:shell
}
alias resh=remote_shell

alias rstg='remote_shell staging'
alias rsbx='remote_shell sandbox'

function remote_console {
  environment=$1
  bundle exec cap $environment remote:console
}
alias rc=remote_console


function new_gem {
  gem_name=$1
  mkdir $gem_name

  mkdir $gem_name/lib
  mkdir $gem_name/bin

  echo 2.2.2 > $gem_name/.ruby-version

  echo 'source "https://rubygems.org"' > $gem_name/Gemfile
  echo gemspec >> $gem_name/Gemfile

  echo 'Gem::Specification.new do |gem|' > $gem_name/$gem_name.gemspec
  echo "  gem.name = '$gem_name'" >>  $gem_name/$gem_name.gemspec
  echo "  gem.version = '0.0.0'" >>  $gem_name/$gem_name.gemspec
  echo end >>  $gem_name/$gem_name.gemspec
}

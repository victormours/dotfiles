function cap_deploy_branch {
  branchname=$1
  bundle exec cap staging deploy -S branch=$branchname
}

alias cdb=cap_deploy_branch

function open_gem {
  gem_name=$1
  mvim `bundle show $gem_name`
}

alias og=open_gem


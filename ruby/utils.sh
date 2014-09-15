function cap_deploy_branch {
  branchname=$1
  bundle exec cap staging deploy -S branch=$branchname
}

alias cdb=cap_deploy_branch

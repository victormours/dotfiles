function git_delete_branch_for_real {
  git branch -D $1 && git push origin :$1
}

function git_clean_branches {
  git branch --merged master | grep -v "master" | grep -v "^\*" | xargs -n 1  bash -c 'git branch -D $@ && git push origin $@ 2> /dev/null' bash
}

alias gcl=git_clean_branches

function g {
  git add --all :/
  git commit -m $*
}

function git-mustache {
  git commit -m ":man: $*"
}

function git_fix_conflicts {
  git diff --name-only | uniq | xargs $EDITOR
}
alias gfc=git_fix_conflicts

function nb {
  NEW_BRANCH_NAME=$1
  git checkout -b $NEW_BRANCH_NAME
  git branch --set-upstream-to origin/$NEW_BRANCH_NAME
}

function git_dig {
  git log --pretty=format:'%Cred%h%Creset - %Cgreen(%ad)%Creset - %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=short -G"$1" -- $2
}


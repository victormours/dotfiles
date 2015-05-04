function new_repo {
  REPO_NAME=$1
  if [ $REPO_NAME ]
  then
    mkdir $REPO_NAME
    cd $REPO_NAME
    git init
    hub create
    hub browse
  else
    echo "usage: new_repo <my_new_repo_name>"
  fi
}


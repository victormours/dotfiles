function new_repo {
  REPO_NAME=$1
  HUB_CREATE_ARG=$2

  if [ $REPO_NAME ]
  then
    mkdir $REPO_NAME
    cd $REPO_NAME
    git init
    hub create $HUB_CREATE_ARG
    hub browse
  else
    echo "usage: new_repo <my_new_repo_name> [-p]"
    echo "The -p flag creates a private repository"
  fi
}


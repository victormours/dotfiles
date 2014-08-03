function open_project {
  project_name=$1
  autojump $project_name
  mvim .
}

explicit_alias o open_project

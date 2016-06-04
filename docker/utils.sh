function docker_cleanup_containers {
  docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm
}

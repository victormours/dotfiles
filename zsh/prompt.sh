function set_git_prompt {
  if git status &> /dev/null ; then
    branchname=`git rev-parse --abbrev-ref HEAD`
    git_prompt="(%{$branchname%}) "
  else
    git_prompt=''
  fi
}

precmd_functions+=set_git_prompt

user_prompt='%{%F{magenta}%}%n%{%F{default}%}@%{%F{yellow}%}%m%{%F{default}%}'
path_prompt='%{%F{green}%}%1~%{%F{default}%}'

setopt prompt_subst
PROMPT='%{$user_prompt%} %{$path_prompt%} %{$git_prompt%}%# '


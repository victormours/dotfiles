function precmd {
  if git status &> /dev/null ; then
    branchname=`git rev-parse --abbrev-ref HEAD`
    git_prompt="(%{$branchname%}) "
  else
    git_prompt=''
  fi
}

setopt prompt_subst

user_prompt='%{%F{magenta}%}%n%{%F{default}%}@%{%F{yellow}%}%m%{%F{default}%}'
path_prompt='%{%F{green}%}%1~%{%F{default}%}'

PROMPT='%{$user_prompt%} %{$path_prompt%} %{$git_prompt%}%# '



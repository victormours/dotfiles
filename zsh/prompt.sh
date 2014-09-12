# Heavily inspired form skwp's prompt

function set_git_prompt {
  if git status &> /dev/null ; then
    branchname=`git rev-parse --abbrev-ref HEAD`
    git_status=`git status --porcelain | awk '{print $1}'`

    git_added=`echo $git_status | grep A`
    git_modified=`echo $git_status | grep M`
    git_untracked=`echo $git_status | grep \?\?`

    git_status_prompt=''
    if [ -n "$git_added" ]; then
      git_status_prompt+='%{%F{green}%}●%{%f%}'
    fi
    if [ -n "$git_modified" ]; then
      git_status_prompt+='%{%F{yellow}%}●%{%f%}'
    fi
    if [ -n "$git_untracked" ]; then
      git_status_prompt+='%{%F{red}%}●%{%f%}'
    fi

    git_prompt="(%{$branchname%}%{$git_status_prompt%}) "
  else
    git_prompt=''
  fi
}

precmd_functions+=set_git_prompt

user_prompt='%{%F{magenta}%}%n%{%f%}@%{%F{yellow}%}%m%{%f%}'
path_prompt='%{%F{green}%}%1~%{%f%}'

setopt prompt_subst
PROMPT='%{$user_prompt%} %{$path_prompt%} %{$git_prompt%}%{%F{yellow%}%#%{%f%}%  '


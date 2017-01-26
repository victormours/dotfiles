# Heavily inspired form skwp's prompt

function set_git_prompt {
  if [ -e '.git' -o -e '../.git' ]; then
    branchname=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
    git_status=`git status --porcelain | awk '{print $1}'`

    git_added=`echo $git_status | grep A`
    git_modified=`echo $git_status | grep M`
    git_renamed=`echo $git_status | grep R`
    git_untracked=`echo $git_status | grep \?\?`
    git_deleted=`echo $git_status | grep D`

    git_status_prompt=''
    if [ -n "$git_added" ]; then
      git_status_prompt+='%{%F{green}%}✚%{%f%}'
    fi
    if [ -n "$git_modified" ]; then
      git_status_prompt+='%{%F{yellow}%}●%{%f%}'
    fi
    if [ -n "$git_renamed" ]; then
      git_status_prompt+='%{%F{yellow}%}●%{%f%}'
    fi
    if [ -n "$git_untracked" ]; then
      git_status_prompt+='%{%F{red}%}●%{%f%}'
    fi
    if [ -n "$git_deleted" ]; then
      git_status_prompt+='%{%F{red}%}-%{%f%}'
    fi

    git_prompt="($branchname$git_status_prompt) "
  else
    git_prompt=''
  fi
}

precmd_functions+=set_git_prompt

user_prompt='%{%F{magenta}%}%n%{%f%}'
path_prompt='%{%F{green}%}%1~%{%f%}'
state_prompt='%{%F{yellow}%}%#%{%f%}'

setopt prompt_subst
PROMPT='$user_prompt $path_prompt $git_prompt$state_prompt '
RPROMPT='%(?..%B[exit status: %?]%b)'



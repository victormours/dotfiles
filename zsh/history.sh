## Command history configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history

function top_commands {
  cat ~/.zsh_history | format_history | head -n20
}
alias tc=top_commands

function top_recent_commands {
  tail -n1000 ~/.zsh_history | format_history | head -n20
}
alias trc=top_recent_commands

function format_history {
  cut -d ';' -f 2- 2>/dev/null |
    awk '{a[$1]++ } END{for(i in a){print a[i] " " i}}'|
    sort -rn
}

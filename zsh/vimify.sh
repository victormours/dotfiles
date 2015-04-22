bindkey -v # Vi keybinding

# Keep some defaults
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="[ VI MODE ]"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}
export KEYTIMEOUT=1

zle -N zle-line-init
zle -N zle-keymap-select


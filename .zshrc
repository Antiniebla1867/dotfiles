# --- MODO VI ---
bindkey -v

# Cambiar rápido a modo normal con jk
bindkey -M viins 'jk' vi-cmd-mode

# Cursor visual según modo
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '\e[1 q'   # bloque
  else
    echo -ne '\e[5 q'   # barra
  fi
}
zle -N zle-keymap-select

# Aplicar al iniciar
echo -ne '\e[5 q'

# --- HISTORIAL MEJORADO ---
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt share_history

# Buscar en historial con flechas (tipo fzf light)
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# --- COMPLETADO ---
autoload -Uz compinit
compinit


# --- PROMPT SIMPLE ---
PROMPT='%F{cyan}%n@%m%f:%F{yellow}%~%f %# '

# --- ALIAS ---
alias cdwm="nvim ~/dwm/config.h"
alias mdwm="cd ~/dwm;sudo make clean install;cd -"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias ls="ls --color=auto"
alias ll="ls -lah --color=auto"
alias gs='git status'
alias gc='git commit'
alias v='nvim'

# --- STARSHIP ---
eval "$(starship init zsh)"

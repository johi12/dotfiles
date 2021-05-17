eval "$(starship init zsh)"

# Aliases
alias vim='nvim'
alias vi='nvim'
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'

# Keybindings
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

## Backspace working the way it should
bindkey '^?' backward-delete-char
bindkey '^[[3~' delete-char

# Setings
typeset -u PATH
autoload colors; colors;
autoload -Uz compinit
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end
setopt auto_pushd

if type fzf &> /dev/null && type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!vendor/*"'
  export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!vendor/*"'
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  set_fzf_default_opts
fi


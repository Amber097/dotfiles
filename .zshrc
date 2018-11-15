# signature:    oceansatealaska

# load bashrc alias
source ~/.bashrc user_def

[ "$USER" = "root" ] && PROMPT='%n@%m:%~%\ # ' || PROMPT='%n@%m:%~%\ $ '

autoload -Uz compinit && compinit
setopt correct

bindkey "^[[1~" beginning-of-line
bindkey "^[[2~" quoted-insert
bindkey "^[[3~" delete-char
bindkey "^[[4~" end-of-line
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVESIZE=10000

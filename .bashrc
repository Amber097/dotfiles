# .bashrc
# signature:    oceansatealaska

SRC_DIR=~/git/dotfiles
SECRET_FILE=${SRC_DIR}/.secret
# Source global definitions
global_def () {
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi
}

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
user_def () {

  # Alias
  alias ..='cd ..'
  alias cd..='cd ..'
  alias cd-='cd -'
  alias la='ls -al --color=auto'
  alias ll.='ls -dl .* --color=auto'
  alias less='less -NSR'
  if which vim &> /dev/null; then
    alias vi='vim'
  fi

  # Function
  alias ucomment='grep -v -E '\''^$|^ *#'\'''
    # Note: Use '\' when escape '
    #       e.g.
    #       alias cmd='awk '\''{print $1}'\'''

  # Proxy Configuration
  if [ -e ${SECRET_FILE} ]; then
    export HTTP_PROXY="$(awk /HTTP_PROXY/'{print $2;}' ${SECRET_FILE})"
    export HTTP_PROXY_USER="$(awk /HTTP_PROXY_USER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS5_SERVER="$(awk /SOCKS5_SERVER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS_USER="$(awk /SOCKS_USER/'{print $2;}' ${SECRET_FILE})"
  fi
}

if [ "$#" = "1" ] && [ "$1" = "user_def" ]; then
  # for zshrc
  user_def
else
  global_def
  user_def
fi

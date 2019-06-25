# .bashrc

# Source global definitions
global_def () {
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi
  # Uncomment the following line if you don't like systemctl's auto-paging feature:
  # export SYSTEMD_PAGER=
}


# User specific aliases and functions
user_def () {

  # Alias
  alias ..='cd ..'
  alias cd..='cd ..'
  alias cd-='cd -'
  alias la='ls -al --color=auto'
  alias ll.='ls -dl .* --color=auto'
  alias less='less -NR'
  if which vim &> /dev/null; then
    alias vi='vim'
  fi

  # Function
  alias ucomment='grep -v -E '\''^$|^ *#'\'''
    # Note: Use '\' when escape '
    #       e.g.
    #       alias cmd='awk '\''{print $1}'\'''

}

if [ "$#" = "1" ] && [ "$1" = "user_def" ]; then
  # for zshrc
  user_def
else
  global_def
  user_def
fi



# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
SRC_DIR=~/git/dotfiles
SECRET_FILE=${SRC_DIR}/.secret
user_def () {
  # Proxy Configuration
  if [ -e ${SECRET_FILE} ]; then
    export HTTP_PROXY="$(awk /HTTP_PROXY/'{print $2;}' ${SECRET_FILE})"
    export HTTP_PROXY_USER="$(awk /HTTP_PROXY_USER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS5_SERVER="$(awk /SOCKS5_SERVER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS_USER="$(awk /SOCKS_USER/'{print $2;}' ${SECRET_FILE})"
  fi
}

user_def

# General

PATH=$PATH:$HOME/bin
export PATH

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
    export HTTP_PROXY="$(awk -F\= /HTTP_PROXY/'{print $2;}' ${SECRET_FILE})"
    export HTTP_PROXY_USER="$(awk -F\= /HTTP_PROXY_USER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS5_SERVER="$(awk -F\= /SOCKS5_SERVER/'{print $2;}' ${SECRET_FILE})"
    export SOCKS_USER="$(awk -F\= /SOCKS_USER/'{print $2;}' ${SECRET_FILE})"
  fi
}

user_def

# General

PATH=$PATH:$HOME/bin
export PATH

# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  #eval "$(pyenv virtualenv-init -)"
fi

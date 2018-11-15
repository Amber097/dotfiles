#!/bin/bash
set -eu
SRC_DIR=$(cd $(dirname $0); pwd)

CONF=( .bashrc
       .vimrc
       .zshrc
       .tmux.conf
)

cp_rc () {
  ln -sf ${SRC_DIR}/$1 ~/$1
}

for e in ${CONF[@]}; do
  if [ ! -e ~/$e ]; then
    cp_rc $e
  else
    echo "~/$e already exists. Cannot create a symbolic link."
  fi
done

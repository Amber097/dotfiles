#!/bin/bash
set -eu
SRC_DIR=$(cd $(dirname $0); pwd)

CONF=( .bash_profile
       .bashrc
       .vimrc
       .zshrc
       .tmux.conf
)

cp_rc () {
  ln -sf ${SRC_DIR}/$1 ~/$1
}

backup () {
  git add --all $SRC_DIR
  git commit -m poi
  git push origin master
}

for e in ${CONF[@]}; do
  if [ ! -e ~/$e ]; then
    cp_rc $e
    echo "Link to ~/$e was created."
  else
    echo "~/$e already exists. Cannot create a symbolic link."
  fi
done


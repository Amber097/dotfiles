#!/bin/bash

BACKUP_DIR=~/dotfiles
DOT_FILES=(
    tmux.conf
    vimrc
    bashrc
    zshrc
)
SIGNATURE=oceansatealaska

backup () {
    cp -p ~/.$1 ${BACKUP_DIR}/$1 \
    && echo "backup .$1"
}

setup () {
    cp -p ${BACKUP_DIR}/$1 ~/.$1 \
    && echo "setup .$1"
}

for e in ${DOT_FILES[@]}; do
    if [ -e ~/.$e ]; then
        if [ ~/.$e -nt ${BACKUP_DIR}/$e ]; then
            if grep ${SIGNATURE} ~/.$e > /dev/null; then
                backup $e
            else
                echo "Can not backup .$e because of no signature"
            fi
        fi
    else
        setup $e
    fi
done

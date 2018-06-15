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
    && echo "backup ~/.$1"
}

setup () {
    cp -p ${BACKUP_DIR}/$1 ~/.$1 \
    && echo "setup ~/.$1"
}

for e in ${DOT_FILES[@]}; do
    
    if [ ! -e ~/.$e ]; then
        setup $e
        continue
    fi
    
    grep ${SIGNATURE} ~/.$e > /dev/null
    if [ $? != 0 ]; then
        echo "Can not backup ~/.$e because of no signature"
        continue
    fi

    if [ ~/.$e -nt ${BACKUP_DIR}/$e ]; then
        backup $e
    elif [ ~/.$e -ot ${BACKUP_DIR}/$e ]; then
        echo "Your old ~/.${e} exists. Overwrite it? [y/n]: "
        read ans
        if [ "$ans" = "y" ]; then
            setup $e \
            && echo "Updated ~/.$e."
        else
            echo "Canceled."
        fi
    fi

done

#!/bin/bash

time=$(date "+%Y%m%d%H%M%S")
backup_d=~/.psl_bk_${time}

if [ -d ~/.psl_bk_* ]; then
    echo "Backed up yet"
    exit 1
else
    mkdir ${backup_d}
fi

if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    mv ~/.vimrc ${backup_d}/vimrc_${time}
    ln -s $(pwd)/vimrc ~/.vimrc
fi

if [ -d ~/.vim ] || [ -h ~/.vim ]; then
    mv ~/.vim ${backup_d}/vim_${time}
    ln -s $(pwd)/vim ~/.vim
fi

if [ "$(echo $SHELL | grep -o "bash")" != "bash" ]; then
    echo "No bash shell"
    exit 1
fi

if [ -f ~/.bashrc ] || [ -h ~/.bashrc ] && [ "$(cat ~/.bashrc | grep -o "$(pwd)")" != "$(pwd)" ]; then
    cp ~/.bashrc ${backup_d}/bashrc_${time}
    echo "source $(pwd)/bashrc" >> ~/.bashrc
else
    echo "Seted up bashrc yet"
fi

mkdir vim/plugged
mkdir vim/tmp
mkdir vim/tmp/backup
mkdir vim/tmp/swap
mkdir vim/tmp/undo

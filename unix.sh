#!/bin/bash
cp .vimrc ~
cp .tmux.conf ~
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/swap
curl -Os https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv plug.vim ~/.vim/autoload

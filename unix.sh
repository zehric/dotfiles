#!/bin/sh
cp .vimrc ~
cp .tmux.conf ~
cp .bashrc ~
cp .gitconfig ~
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/swap
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
mv plug.vim ~/.vim/autoload
mv git-prompt.sh ~/.git-prompt.sh

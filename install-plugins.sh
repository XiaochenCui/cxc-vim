#!/usr/bin/env bash

function update {
    cp vimrc $HOME/.vimrc
    sudo vim +PluginClean +qall
    sudo vim +PluginInstall +qall
}

function init {
    echo ">>> Set up Vundle ..."
    sudo rm -rf ~/.vim/bundle/Vundle.vim
    sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    pip install flake8  # for vim-flake8

	sudo git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

    update;

    cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && sudo ./install.py
}


if [[ $1 = "init" ]]; then
    init;
else
    update;
fi


#!/usr/bin/env bash

function echoo {
    echo -e "\n\033[32m $1 \033[0m"
}

function update {
    cp vimrc $HOME/.vimrc
    sudo vim +PluginClean +qall
    sudo vim +PluginInstall +qall
}

function init {
    echoo ">>> Set up Vundle ..."
    sudo rm -rf ~/.vim/bundle/Vundle.vim
    sudo chmod 777 ~/.vim/bundle
    git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    pip install flake8  # for vim-flake8

    git clone https://github.com/flazz/vim-colorschemes.git && sudo cp -r vim-colorschemes/colors ~/.vim && rm -rf vim-colorschemes

    update;

    cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && sudo ./install.py --clang-completer
}


if [[ $1 = "init" ]]; then
    init;
else
    update;
fi


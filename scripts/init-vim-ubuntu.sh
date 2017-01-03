#!/usr/bin/env bash
# Init vim in Ubuntu
function echoo {
    echo -e "\n\033[32m $1 \033[0m"
}


# clone vim
echoo ">>> Building Vim from source: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source"

echoo ">>> First, install all the prerequisite libraries, including Git ..."
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev build-essential cmake git

sudo apt-get install golang

echoo ">>> Remove vim if you have it already ..."
sudo apt-get remove vim vim-runtime gvim

echoo ">>> Install vim ..."
cd ~ && rm -rf vim && whoami && git clone git@github.com:vim/vim.git && cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --disable-pythoninterp \
            --enable-python3interp \
            --with-python3-config-dir=$(python3-config --configdir) \
            --with-mac-arch=x86_64 \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo make install

# set vim as default editor after install complete
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

# for plugins tag-misc, easy-tag, tagbar
sudo apt-get install exuberant-ctags

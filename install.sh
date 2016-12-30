#!/usr/bin/env bash


function echoo {
    echo -e "\n\033[32m $1 \033[0m"
}


# backup
echoo ">>> Backing up old vim configs"

today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc; do
    [ -e $i ] && sudo mv $i $i.$today;
done


read -p "Rebulid the vim and all plugins, Are you sure(Y/N)? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo bash scripts/init-vim-ubuntu.sh
    sudo bash install-plugins.sh init
    sudo bash install-powerline-fonts.sh
    echoo "Install finished."
else
    echoo "The user cancels the operation."
fi

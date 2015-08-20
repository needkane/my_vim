#! /bin/bash 

[[ ! -f vimrc  ]] && echo "Make sure you are in the directory which has vimrc" && exit -1 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/

echo -e "Done ! \nPlease  Launch vim and run :PluginInstall"

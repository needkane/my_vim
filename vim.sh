#! /bin/bash 

[[ ! -f ./vimrc  ]] && echo "Make sure you are in the directory which has vimrc" && exit -1 
[[ -f ~/.vimrc  ]] && mv ~/.vimrc ~/vimrc.bak
[[ ! -d ~/.vim/bundle ]] && mkdir -p ~/.vim/bundle

git clone --depth=10 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln  -sv `pwd`/vimrc ~/.vimrc

echo -e "Done ! \nPlease  Launch vim and run :PluginInstall"

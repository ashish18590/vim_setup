#!/bin/bash
mkdir -p $HOME/.vim/bundle
if [ $? -ne 0 ]; then
	echo "Unable to create directory : $HOME/.vim/bundle... Error"
	exit 1
fi
mkdir -p $HOME/system_setup
if [ $? -ne 0 ]; then
	echo "Unable to create directory : mkdir -p $HOME/system_setup... Error"
	exit 1
fi

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

set -x
ln -s $PWD/vimrc $HOME/.vimrc
if [ $? -ne 0 ]; then
	echo "Error...."
	echo "Unable to create soft link for vimrc file"
	echo "Exiting........"
	exit 1
fi






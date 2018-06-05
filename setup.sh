#!/bin/bash
if [ "$1" == "clean" ]; then
	if [ -e $HOME/.vim/bundle ]; then
		cp -rv $HOME/.vim/bundle $HOME/vim/bundle_bkp
		rm -rf $HOME/.vim/bundle
	fi
	if [ -e $HOME/.vimrc ]; then
		cp -rv $HOME/.vimrc $HOME/vimrc_bkp
		rm -rf $HOME/.vimrc
	fi

fi

mkdir -p $HOME/.vim/bundle
if [ $? -ne 0 ]; then
	echo "Unable to create directory : $HOME/.vim/bundle... Error"
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






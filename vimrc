set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/c.vim' "http://www.thegeekstuff.com/2009/01/tutorial-make-vim-as-your-cc-ide-using-cvim-plugin/
call vundle#end()            " required
filetype plugin indent on
set t_Co=256
set background=dark
"set background=light
colorscheme molokai
let g:molokai_original = 1
map <C-n> :NERDTreeToggle<CR>
map <C-l> :TlistToggle<CR>


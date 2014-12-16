set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive.git' 
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a
set t_Co=256
syntax on


set et
set ts=2
set sw=2
set hlsearch

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

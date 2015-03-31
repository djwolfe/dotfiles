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
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'will133/vim-dirdiff'
Plugin 'mileszs/ack.vim'
Plugin 'fholgado/minibufexpl.vim'

" run :PluginInstall

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set dir=~/tmp
set mouse=a
set t_Co=256
syntax on


set et
set ts=2
set sw=2
set hlsearch
set incsearch

" let g:airline#extensions#tabline#enabled = 1
let g:ackprg = 'ack-grep'
let g:miniBufExplUseSingleClick = 1

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
autocmd FileType php setlocal tabstop=4 shiftwidth=4

colorscheme molokai


set nocompatible               " be iMproved
filetype off                   " required! (breaks crontab and git rebase -i)

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles; correspond to github repos:
Plugin 'joonty/vim-sauce.git'
Plugin 'scrooloose/nerdtree'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'

call vundle#end()             " required!

filetype plugin indent on     " required!


"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch

" Mappings

" Window mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Search mappings
map <space> /
map <c-space> ?

" Insertion mappings
map <CR> o<ESC>

"let g:vdebug_options = {}
"let g:vdebug_options['on_close'] = 'detach'
"let g:vdebug_options['ide_key'] = 'xdebug'

set nocompatible               " be iMproved
"filetype off                   " required! (breaks crontab and git rebase -i)

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
  
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'php.vim'
Bundle 'joonty/vim-sauce.git'
Bundle 'scrooloose/nerdtree'
Bundle 'joonty/vim-phpqa.git'
Bundle 'joonty/vim-phpunitqf'
Bundle 'elzr/vim-json'
Bundle 'lunaru/vim-twig'
Bundle 'groenewege/vim-less'
Bundle 'mustache/vim-mode'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
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

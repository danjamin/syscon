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
Bundle 'joonty/vim-phpqa.git'
Bundle 'joonty/vim-taggatron'
Bundle 'scrooloose/nerdtree'
Bundle 'joonty/vim-phpunitqf'
Bundle 'greplace.vim'
Bundle 'elzr/vim-json'
Bundle 'lunaru/vim-twig'
Bundle 'groenewege/vim-less'
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

" configure taggatron
" initially, you need to run:
" ctags -f php.tags --languages=PHP -R
set tags=php.tags
let g:tagcommands = {"php":{"tagfile":"php.tags","args":"-R","cmd":"ctags"}}

" configure phpqa (code sniffing)
let g:phpqa_codesniffer_args = "--standard=/usr/local/opt/php-code-sniffer/CodeSniffer/Standards/PSR2/ruleset.xml"
let g:phpqa_messdetector_autorun = 0  " Disable mess detector

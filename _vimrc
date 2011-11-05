filetype off
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
set number
colorscheme wombat256
set foldmethod=indent
set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf

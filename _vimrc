filetype off

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
set number
colorscheme wombat256
"set foldmethod=indent
set foldmethod=syntax
set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf

imap jj <esc>
imap kk <esc>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Set .pro as prolog extension
au BufNewFile,BufRead *.pro set filetype=prolog

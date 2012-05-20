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

" Mappings for Syntastic
"
" Toggle Syntastic's mode so it doesn't auto scan on save
nmap <Leader>st :SyntasticToggleMode
" Bring up the error window to display error messages
nmap <Leader>sw :Errors
" Manually run a syntax check
nmap <Leader>sc :SyntasticCheck

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Set .pro as prolog extension
au BufNewFile,BufRead *.pro set filetype=prolog

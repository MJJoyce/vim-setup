filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen setup and init
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on
syntax on
set cindent
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup colorscheme 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" In OS X Terminal, using Solarized messes up the coloring in vim
" unless the terminal colorscheme is set. This is left here in case
" customization is needed in the future.
set background=dark
if has('gui_running')
    colorscheme solarized
else
    colorscheme solarized
    "colorscheme wombat256
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set fold settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldmethod=syntax
set foldnestmax=2
nnoremap <space> za
vnoremap <space> zf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Invisible character settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle invisible characters with \sl
nmap <leader>sl :set list!<CR>
" Set custom symbols for certain characters
set listchars=tab:▸\ ,eol:¬

" Set colors for invisible characters
highlight NonText guifg=#586e75
highlight SpecialKey guifg=#586e75


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc. keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap jj <esc>
imap kk <esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File extenstion and whitespace settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Defaults - tabspace = 4, softtabspace = 4, shiftwidth = 4, noexpandtab
set ts=4 sts=4 sw=4 noet

if has("autocmd")
    "Set .pro as prolog extension
    au BufNewFile,BufRead *.pro set filetype=prolog

    autocmd FileType make setlocal ts=8 sts=8 sw=8 noet
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
    autocmd FileType python setlocal ts=4 sts=4 sw=4 et
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle Syntastic's mode so it doesn't auto scan on save
nmap <Leader>st :SyntasticToggleMode
" Bring up the error window to display error messages
nmap <Leader>sw :Errors
" Manually run a syntax check
nmap <Leader>sc :SyntasticCheck

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Tree Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Bind view toggle
map <F9> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:showmarks_enable=0			" Turn off ShowMarks by default

set nocompatible		" Not strictly needed, but we'll go with it anyway
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

filetype plugin on             " Allow filetype plugins
syntax on                      " Turn syntax highlighting on
set autoindent                 " Turn on auto indent
" set cindent				   " Uses a stricter indenting method. Not sure if I want it
set scrolloff=3                " Sets an offset for the cursor where scrolling begins.
set showmode                   " Show the mode of the editor.
set showcmd                    " Show keyboard state in normal mode.
set hidden                     " Allow hidden buffers to have unsaved state.
set wildmenu                   " Make tab completion related things work better.
set wildmode=list:longest
set visualbell                 " No more beeping alerts.
set cursorline                 " Highlight the whole line where the cursor is.
set ttyfast                    " Fast connection (?) setting
set ruler                      " Draw cursor location information in the bottom bar.
set splitbelow				   " Split windows below current window.
set backspace=indent,eol,start " Make backspace work over linebreaks.
set laststatus=2               " Give the status line a dedicated line on the bottom.
set undofile                   " Save undo-s in a file so you can undo after opening a file.

" Escape out of insert mode with jj
imap jj <esc>                  
" Escape out of insert mode with k
imap kk <esc>                  

" Set the Leader
let mapleader = ","
" Let semicolon be used for colon
noremap ; :					   
" Autosave the buffer when window focus is lost
autocmd FocusLost * :wa

" Open up the vimrc in a new buffer
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" Source the vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Paste toggle makes vim handle pasted results better
set pastetoggle=<F1>

" Use Unicode encoding
set encoding=utf-8

" Set the Desired font
set guifont=inconsolata:h13

" Turn off the toolbar in MacVim
if has("gui_running")
	set guioptions-=T
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Related Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Vim's weird regex system for searching
nnoremap / /\v                    
vnoremap / /\v
set ignorecase                    " Default to ignoring case in search
set smartcase                     " If there is a combination of case, don't ignore case
set gdefault                      " Default to global replace. use g to disable now
set incsearch                     " This + next 2 highlight search results as typed
set showmatch
set hlsearch
" Clear search highlight
nnoremap <leader><space> :noh<cr> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Line Numbering
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber								" Default to relative #'s
autocmd InsertEnter * :set number				" Absolute #'s in insert mode
autocmd InsertLeave * :set relativenumber		" Relative #'s in normal mode


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
"
" Note, other characters can be highlighted.
" For instance, trail:.,extends:#,nbsp:.
"
" Toggle invisible characters with \sl
nmap <leader>sl :set list!<CR>
" Set custom symbols for certain characters
set listchars=tab:▸\ ,eol:¬

" Set colors for invisible characters
highlight NonText guifg=#586e75
highlight SpecialKey guifg=#586e75


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Column coloring settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80
highlight ColorColumn guibg=#586e75


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
" FileType Specific Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType java setlocal smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for CamelCaseMotion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Rebinding these always results in a E490 coming up. It's really annoying...
"
" Currently using defaults, may change later if bindings are needed.
"map ;w <Plug>CamelCaseMotion_w 
"map ;b <Plug>CamelCaseMotion_b 
"map ;e <Plug>CamelCaseMotion_e 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parentheses Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle Rainbow Parentheses
map <F9> :RainbowParenthesesToggle<CR>			


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gundo Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle Gundo
nnoremap <F2> :GundoToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagBar Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggle TagBar
nmap <silent> <F5> :TagbarToggle<CR>


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
map <F10> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:showmarks_enable=0			" Turn off ShowMarks by default

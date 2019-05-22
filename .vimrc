" VIM CONFIGURATION FILE
" ======================
" ======================
" ======================

" MISC
" ====

" disable being compatible with vi
set nocompatible

" stops text from disapering when using console emulators like ConEmu or Cmder
" this usally happens when going to the end or start of the file using G or gg
" '32' seems to work quiet well
set ttyscroll=32

" specify encoding
set encoding=utf-8

" disable error bell sound
set noerrorbells

" make backspace work in insert mode
set backspace=indent,eol,start

" better searching
set path+=**

" automatically cd into the directory that the file is in
set autochdir

" display all matching files when using 'find' command + tab
set wildmenu

" auatomatically 'cd' into the directory that the file is in
set autochdir

" KEY MAPPINGS
" ============

" split switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" disable arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" jj behaves like ESC in insert mode: This is for faster mode switching
inoremap jj <ESC>

" tap switching
nmap <F7> :tabn<CR>
nmap <F8> :tabp<CR>

" run the current ruby file
nmap <F6> :!ruby %<CR>

" toggle highlighter when searching
nnoremap <F3> :set hlsearch!<CR>

" for copy pasting
set pastetoggle=<F10>

" Programming
" ===========

set smartindent
set expandtab
set autoindent
" '2' for ruby dev
set tabstop=2 
set shiftwidth=2 
set softtabstop=2

" enable syntax highlighting when editing src files
syntax enable

set textwidth=80
match ErrorMsg '\%>80v.\+'

" Style
" =====

" show line numbers
set nu 

" colorscheme
colorscheme default

" always show the status line
set laststatus=2

" tail of the file name
set statusline =%t

" add file encoding to status line 
set statusline +=[%{strlen(&fenc)?&fenc:'none'},

" add file format to status line
set statusline +=%{&ff}]

" add help file tag to status line
set statusline +=%h

" add modified tag to status line
set statusline +=%m

" add read only flag to status line
set statusline +=%r

" add filetype to status line
set statusline +=%y

" add left/right separator to status line
set statusline+=%=     

" add cursor column to status line
set statusline+=%c,   

" add cursor line/total lines to status line
set statusline+=%l/%L 

" add percent through file to status line
set statusline+=\ %P

" color of the whole background
hi Pmenu ctermbg=green guibg=gray

" color fo the selected item
hi PmenuSel ctermbg=yellow

" air line configuration
set ttimeoutlen=50
let g:airline_theme = 'dark'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts=1
let g:airline_detect_paste=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" GVIM SPECIFIC STYLE
" ===================

" set font of GVIM
set guifont=Consolas:h14

" remove the menubar of GVIM
set guioptions-=m 

" remove the toolbar of GVIM
set guioptions-=T 

" remove the right-hand scrollbar of GVIM
set guioptions-=r 

" remove the left-hand scrollbar of GVIM
set guioptions-=L 

" LANGUAGE
" ========

set helplang=EN
set langmenu=en_US
let $LANG='en_US'


"
" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
" =============================================

" -----------
" BASIC STUFF
" -----------

" disable being compatible with vi
set nocompatible

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

" text layouting
set smartindent
set expandtab
set autoindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" enable syntax highlighting when editing src files
" syntax on

" max textwidth before wrapping
set textwidth=80

" Render red line when text goes over 80 characters in a single line
" match ErrorMsg '\%>80v.\+'

" stops text from disapering when using console emulators like ConEmu or Cmder
" this usally happens when going to the end or start of the file using G or gg
" '32' seems to work quiet well
"set ttyscroll=32

" set colorscheme (theme)
colorscheme default

" custom highlighting
highlight int ctermfg=red

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

" color for the selected item
hi PmenuSel ctermbg=yellow

" language definitions
set helplang=EN
set langmenu=en_US
let $LANG='en_US'

" ------------
" KEY MAPPINGS
" ------------

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

" better insert leaves
inoremap jj <ESC>
inoremap <C-c> <ESC>
nnoremap <C-c> <ESC>

" tap switching
nmap <F7> :tabn<CR>
nmap <F8> :tabp<CR>

" run the current ruby file
nmap <F6> :!ruby %<CR>

" toggle highlighter when searching
nnoremap <F3> :set hlsearch!<CR>

" for copy pasting (set paste and set nopaste)
set pastetoggle=<F10>

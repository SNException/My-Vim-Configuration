"
"
"
" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"
"
"


" ===================================
" ============= PLUGINS =============
" ===================================

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ===================================
" ============= BASICS ==============
" ===================================

" disable being compatible with vi
set nocompatible

" now buffers can be switches without writing them (they are hidden and can be
" switched back to later
set hidden

" use central directory so I do not polute cwd
set directory=~/.vim/swappies
set backupdir=~/.vim/backupfiles

" specify encoding
set encoding=utf-8

" activate mouse support (nice for scrolling)
set mouse=a

" disable error bell sound
set noerrorbells

" make backspace work in insert mode
set backspace=indent,eol,start

" better searching
set path+=**

" automatically cd into the directory that the file is in
set autochdir

" automatically refresh buffer
set autoread

" display all matching files when using 'find' command + tab
set wildmenu

" better scrolling
set scrolloff=4

" text layouting
set smartindent
set expandtab
set autoindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" enable syntax highlighting when editing src files
syntax on
syntax enable

" max textwidth before wrapping
set textwidth=80

" Turn of highlighting completely when searching
set nohlsearch

" language definitions
set helplang=EN
set langmenu=en_US
let $LANG='en'

" ===================================
" ============= MAPPINGS ============
" ===================================

" split switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" disable arrow keys in normal mode and insert mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" better insert leaves
inoremap jj <ESC>

" command mode leave
" for some reason ESC tries to execute the command first before leaving
cnoremap jj <C-c>

" ===================================
" ============= STYLING  ============
" ===================================

" vital for making colorschemes and stuff work
set t_Co=256
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" visual select highlighting
hi Visual ctermfg=18 ctermbg=white
" Popupmenu for autocompletion ( C - n in insert mode )
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermbg=gray

" style vertical separator
hi VertSplit ctermbg=black ctermfg=black
set fillchars+=vert:.

" highlight the current
hi CursorLine cterm=NONE ctermbg=236
set cul 

" ===================================
" ============= CUSTOM ==============
" ===================================

function! ShowByteCodeOfJavaFileInNewVerticalSplit()
	execute ':vnew bytecodetmp | 0read ! javap -p %'
	execute 'redraw!'
endfunction

function! MavenBuild()
	execute '!mvn clean install'
endfunction

function! CompileJavaFile()
	execute '!javac %'
endfunction

nnoremap <leader>p :call ShowByteCodeOfJavaFileInNewVerticalSplit()<CR>
nnoremap <leader>b :call MavenBuild()<CR>
nnoremap <leader>c :call CompileJavaFile()<CR>

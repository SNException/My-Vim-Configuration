set nocompatible
set noerrorbells
set titlestring=Vim
set backspace=indent,eol,start
set clipboard=unnamed
set scrolloff=2
set laststatus=2
set statusline=%<%t\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set ttyfast
set mouse=a
set hidden
set autoread
syntax on

set path+=**
set suffixesadd=.java
set wildmenu
set wildmode=list:longest,full

set encoding=utf8
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set hlsearch
set smartcase
set ignorecase
set incsearch

set nobackup
set nowritebackup
set noswapfile

set shortmess=I
set shortmess-=S
set shortmess+=a
set shortmess+=t

set langmenu=en_US
let $LANG = 'en_US'

let java_ignore_javadoc=1

autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_browse_split = 4

let mapleader = "\<Space>"
set timeoutlen=300

inoremap jj <ESC>
cnoremap jj <C-c>
tnoremap jj <C-\><C-n>

nnoremap n nzz
nnoremap N Nzz

nnoremap gi gi<ESC>zzi

nnoremap ß $
vnoremap ß $

nnoremap <C-j> }
nnoremap <C-k> {
vnoremap <C-j> }
vnoremap <C-k> {

cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

nnoremap <silent><expr> <Leader>f (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <Leader>s /
nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>

nnoremap <Leader>o :call SwitchBuffer()<CR>
function! SwitchBuffer()
    echo "Current listed buffers (" . len(getbufinfo({'buflisted':1})). "):"
    ls
    echo "\n"
    let l:buf = input("Switch to buffer: ", "", "buffer")
    if l:buf == ""
        return
    endif
    echo "\n"
    execute 'b ' . l:buf
    redraw
endfunction

nnoremap <Leader>r :call QueryReplace()<CR>
function! QueryReplace()
	let l:what = input("Replace: ")
	if l:what == ""
		return
	endif
	let l:with = input("Replace " . l:what . " with: ")
	if l:with == ""
		return
	endif
    echo "\n"
	execute '%s/' . l:what . '/' . l:with . '/gc'
endfunction

command! TrimWhiteSpaces :%s/\s\+$//e
command! ToggleSpellCheck :setlocal spell! spelllang=en_us
command! Time :echo strftime("%d-%m-%Y %H:%M")

if has('gui_running')
    set titlestring=GVim
    set foldcolumn=1

    if has('win32')
	    au GUIEnter * simalt ~x
    endif

    colorscheme my

    set guioptions-=e
    set guioptions-=T
    set guioptions-=m
    set guioptions-=R
    set guioptions-=r
    set guioptions-=L
    set guioptions-=l
    set guioptions+=c
    set guioptions+=!

    set guicursor=n:block-Cursor-blinkon0
    set guicursor+=i:block-Cursor-blinkon500
    set guicursor+=ci:block-Cursor-blinkon500

    let g:font_name = "Consolas"
    let g:font_size = 16
    execute 'set guifont=' . g:font_name . ':h' . g:font_size

    nnoremap <Leader>+ :call IncFontSize()<CR>
    function! IncFontSize()
        let g:font_size = g:font_size + 1
        execute 'set guifont=' . g:font_name . ':h' . g:font_size
    endfunction

    nnoremap <Leader>- :call DecFontSize()<CR>
    function! DecFontSize()
        let g:font_size = g:font_size - 1
        execute 'set guifont=' . g:font_name . ':h' . g:font_size
    endfunction

    command! FullScreen :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endif

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
au InsertEnter * call clearmatches()
au BufWinEnter quickfix call clearmatches()
au BufWinEnter quickfix setlocal cul


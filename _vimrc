set nocompatible
set noerrorbells
set titlestring=VIM
set backspace=indent,eol,start
set clipboard=unnamed
set scrolloff=2
set ruler
set laststatus=0
set statusline=%<%t\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set mouse=a
set hidden
set autoread
set nowrap
set nocul
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
let g:netrw_sort_direction="reverse"

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

let g:quick_cmd = "build"
let g:quick_cmd_buffer_name = "quick_command"
nnoremap <Leader>m :call QuickCommand()<CR>
function! QuickCommand()
    if has('win32')
        if has('terminal')
            let prev_term_buf_id = bufnr(g:quick_cmd_buffer_name)
            if prev_term_buf_id != -1
                execute 'bd! ' . prev_term_buf_id
            endif
            if winnr('$') > 1
                execute 'wincmd o'
            endif
            execute 'vert terminal cmd /c' . g:quick_cmd
            exe 'f ' g:quick_cmd_buffer_name
            execute 'wincmd w'
        else
            echon "Your Vim does not have the internal terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

let g:quick_cmd2 = "run"
let g:quick_cmd_buffer_name2 = "quick_command"
nnoremap <Leader>r :call QuickCommand2()<CR>
function! QuickCommand2()
    if has('win32')
        if has('terminal')
            let prev_term_buf_id = bufnr(g:quick_cmd_buffer_name2)
            if prev_term_buf_id != -1
                execute 'bd! ' . prev_term_buf_id
            endif
            if winnr('$') > 1
                execute 'wincmd o'
            endif
            execute 'vert terminal cmd /c' . g:quick_cmd2
            exe 'f ' g:quick_cmd_buffer_name
            execute 'wincmd w'
        else
            echon "Your Vim does not have the internal terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

command! TrimWhiteSpaces :%s/\s\+$//e

if has('gui_running')
    set titlestring=GVIM

    if has('win32')
        au GUIEnter * simalt ~x
    endif

    set guifont=Ubuntu_Mono:h18
    colorscheme desert
    set background=dark

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
    set guicursor+=ci:block-Cursor-blinkon500

    command! Fullscreen :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
au InsertEnter * call clearmatches()
au BufWinEnter quickfix call clearmatches()
au BufWinEnter quickfix setlocal cul


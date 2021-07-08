set nocompatible
set noerrorbells
set titlestring=VIM
set backspace=indent,eol,start
set clipboard=unnamed
set scrolloff=2
set ruler
set laststatus=2
set statusline=%<%t\ %h%m%r%=%-14(L%l%)\ %P
set mouse=a
set hidden
set autoread
set foldcolumn=0
set complete-=t
set nowrap
set wrapscan
set nocul
syntax on

set path+=**
set suffixesadd=.java
set wildignore=
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
set shortmess+=c
set shortmess+=a
set shortmess+=t

set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

let java_ignore_javadoc=1

autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_browse_split = 4

let mapleader = "\<Space>"
set timeoutlen=300

inoremap jj <Esc>`^
cnoremap jj <C-c>
tnoremap jj <C-\><C-n>

nnoremap j gj
nnoremap k gk

nnoremap n nzz
nnoremap N Nzz

nnoremap gi gi<ESC>zzi

nnoremap ß $
vnoremap ß $

nnoremap 0 ^
vnoremap 0 ^

nnoremap ^ 0
vnoremap ^ 0

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
nnoremap <Leader><Tab> :b#<CR>
nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>

map <M-S> :mksession! ~/vimsessions/previous.vim<CR><bar>:echo "Session saved!"<CR>
map <M-L> :source ~/vimsessions/previous.vim<CR><bar>:source $MYVIMRC<CR><bar>:echo "Session loaded!"<CR>

map <F12> :e $MYVIMRC<CR>

command! SearchAnything :call SearchAnything()
nnoremap <F1> :call SearchAnything()<CR>
function! SearchAnything()
    let what = input("Global search: ")
    if what == ''
        return
    endif
    try
        execute 'vimgrep /' . what . '/j **/*'
    catch /E:480:/
        return
    endtry
    cclose
    if winnr('$') > 1
        execute 'wincmd o'
    endif
    vert copen
    wincmd =
endfunction

command! SearchCode :call SearchCode()
nnoremap <F2> :call SearchCode()<CR>
function! SearchCode()
    let what = input("Search code: ")
    if what == ''
        return
    endif
    try
        execute 'vimgrep /' . what . '/j **/*.java'
    catch /E:480:/
        return
    endtry
    cclose
    if winnr('$') > 1
        execute 'wincmd o'
    endif
    vert copen
    wincmd =
endfunction

command! SearchFunction :call SearchFunction()
nnoremap <F3> :call SearchFunction()<CR>
function! SearchFunction()
    let name = input("Function name: ")
    if name == ''
        return
    endif
    try
        let func_decl = '\(public\|protected\|private\|static\|strictfp\|\abstract\|default\|synchronized\)\?\s*\(\w\+\s\+\)\+' . name . '\s*(.*).*[^;]$'
        execute 'vimgrep /' . func_decl . '/j **/*.java'
    catch /E:480:/
        return
    endtry
    cclose
    if winnr('$') > 1
        execute 'wincmd o'
    endif
    vert copen
    wincmd =
endfunction

nnoremap <Leader>e :call ExecuteCommandAsync()<CR>
function! ExecuteCommandAsync()
    if has('win32')
        if has('terminal')
            let cmd = input("Enter command: ", "", "shellcmd")
            if cmd == ''
                return
            endif
            let prev_term_buf_id = bufnr('Output Buffer')
            if prev_term_buf_id != -1
                execute 'bd! ' . prev_term_buf_id
            endif
            if winnr('$') > 1
                execute 'wincmd o'
            endif
            execute 'vert terminal cmd /c' . cmd
            exe 'f ' . 'Output Buffer'
            wincmd w
            wincmd =
            redraw!
        else
            echon "Your Vim does not have the internal terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

nnoremap <Leader>m :!build<CR>
nnoremap <Leader>r :!build run<CR>

command! TrimWhiteSpaces :%s/\s\+$//e

if has('gui_running')
    set titlestring=GVIM

    if has('win32')
        au GUIEnter * simalt ~x
    endif

    let g:font_size = 15
    execute 'set guifont=Consolas:h' . g:font_size

    colorscheme zenburn
    hi Visual       gui=NONE guibg=#0000cc guifg=NONE
    hi CursorLine   gui=NONE guibg=#000000
    hi Label        gui=NONE
    hi TODO         gui=NONE
    hi Conditional  gui=NONE
    hi Character    gui=NONE
    hi Exception    gui=NONE
    hi KeyWord      gui=NONE
    hi PreCondit    gui=NONE
    hi PreProc      gui=NONE
    hi Repeat       gui=NONE
    hi Constant     gui=NONE
    hi Type         gui=NONE
    hi Typdef       gui=NONE
    hi Macro        gui=NONE
    hi Include      gui=NONE
    hi Define       gui=NONE
    hi Boolean      gui=NONE
    hi String       gui=NONE
    hi SpecialChar  gui=NONE
    hi Normal       gui=NONE
    hi Identifier   gui=NONE
    hi Structure    gui=NONE
    hi StorageClass gui=NONE
    hi Operator     gui=NONE
    hi Comment      gui=NONE

    " colorscheme desert
    " hi TODO         guifg=SkyBlue guibg=NONE gui=NONE
    " hi VertSplit    guibg=#c2bfa5 guifg=#c2bfa5
    " hi EndOfBuffer  guifg=gray20  guibg=grey20
    " hi FoldColumn   guifg=gray11  guibg=grey11
    " hi Cursor       guifg=black
    " hi StatusLine   guibg=#c2bfa5 guifg=black
    " hi StatusLineNC guibg=gray50  guifg=black
    " hi Label        gui=NONE
    " hi Conditional  gui=NONE
    " hi Character    gui=NONE
    " hi Exception    gui=NONE
    " hi KeyWord      gui=NONE
    " hi PreCondit    gui=NONE
    " hi PreProc      gui=NONE
    " hi Repeat       gui=NONE
    " hi Constant     gui=NONE
    " hi Type         gui=NONE
    " hi Typdef       gui=NONE
    " hi Macro        gui=NONE
    " hi Include      gui=NONE
    " hi Define       gui=NONE
    " hi Boolean      gui=NONE
    " hi String       gui=NONE
    " hi SpecialChar  gui=NONE
    " hi Normal       gui=NONE
    " hi Identifier   gui=NONE
    " hi Structure    gui=NONE
    " hi StorageClass gui=NONE
    " hi Operator     gui=NONE
    " hi Comment      gui=NONE

    set guitablabel=%t

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

    command! Fullscreen :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

hi QuickFixLine guifg=NONE guibg=NONE

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd InsertEnter * call clearmatches()
autocmd BufWinEnter quickfix call clearmatches()
autocmd BufWinEnter quickfix setlocal cul

autocmd FileType java iabbrev <buffer> sout System.out.println("");<Esc>2hi<Esc>
autocmd FileType java iabbrev <buffer> serr System.err.println("");<Esc>2hi<Esc>

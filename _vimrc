au VimEnter * :echo "The quick brown fox jumps over the lazy dog"

set nocompatible
set backspace=indent,eol,start
set clipboard=unnamed

if has('gui_running')
    set titlestring=GVIM
else
    set titlestring=VIM
endif

syntax on
colorscheme desert
set t_Co=256
set guifont=Ubuntu_Mono:h18
set laststatus=0
set foldcolumn=1
set ruler
set rulerformat=%m%=%l:%c
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

set path+=**
set wildmenu
set wildmode=list:longest

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
set nowrapscan

set hidden
set noswapfile

set shortmess=I
set shortmess+=m

set langmenu=en_US
let $LANG = 'en_US'

autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_browse_split = 4

inoremap jj <ESC>
cnoremap jj <C-c>
tnoremap jj <C-\><C-n>
nnoremap n nzz
nnoremap N Nzz

let mapleader = "\<Space>"
set timeoutlen=300

nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>
nnoremap <Leader>, :echo "Switching to buffer...?\n" <bar> :ls<CR>:buffer<Space>
nnoremap <Leader>r :!
nnoremap <Leader>s /
nnoremap <silent><expr> <Leader>f (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

nnoremap <Leader>c :call LineComment()<CR>
function! LineComment()
    let last_pos = getpos(".")
    let current_file_type = &filetype
    if current_file_type == "python"
	    normal I# 
    elseif current_file_type == "ruby"
	    normal I# 
    elseif current_file_type == "xml"
	    normal I<!-- 
	    normal A -->
    elseif current_file_type == "vim"
	    normal I" 
    elseif current_file_type == "dosini"
	    normal I; 
    elseif current_file_type == "dosbatch"
	    normal IREM 
    else
	    normal I// 
    endif
	call setpos('.', last_pos)
endfunction

nnoremap <Leader>j :call GotoLine()<CR>
function! GotoLine()
    let nr = input("Goto line: ")
    if nr == ""
        return
    endif
    execute ':' . nr
endfunction

nnoremap <Leader>e :call ExecuteShellCommand()<CR>
function! ExecuteShellCommand()
    if has('win32')
        if has('terminal')
            let shell_cmd = input("Run shell command: ")
            if shell_cmd == ""
                return
            endif
            let buffer_name = "quick - command"
            let prev_term_buf_id = bufnr(buffer_name)
            if prev_term_buf_id != -1
                execute 'bd! ' . prev_term_buf_id
            endif
            set termwinsize=20x
            execute 'below terminal cmd /c ' . shell_cmd
            exe "f " buffer_name
        else
            echon "Your Vim does not have the internal Terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

nnoremap <Leader>2 :call GlobalSearch()<CR>
function! GlobalSearch()
	let s:what = input("Search for: ")
    if s:what == ""
        return
    endif
    let s:ext = input("File extension to search in (type '*' for every file): ")
    if s:ext == ""
        return
    endif
    if winnr('$') > 1
        execute 'wincmd o'
    endif
    execute 'vimgrep' . '/' . s:what . '/gj' . '**/*.' . s:ext
    cw
    wincmd =
    echon "Done searching."
endfunction

nnoremap <Leader>1 :call SearchAndReplace()<CR>
function! SearchAndReplace()
	let s:what = input("Replace: ")
	if s:what == ""
		return
	endif
	let s:with = input("With: ")
	if s:with == ""
		return
	endif
	execute '%s/' . s:what . '/' . s:with . '/gc'
endfunction

command! Time :call EchoCurrentTime()
function! EchoCurrentTime()
    echo strftime("%d-%m-%Y %H:%M")
endfunction

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
au InsertEnter * call clearmatches()

command! Trimwhitespaces :call TrimWhiteSpaces()
function! TrimWhiteSpaces()
    %s/\s\+$//e
endfunction

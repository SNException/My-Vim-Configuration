au VimEnter * :echo "The quick brown fox jumps over the lazy dog"

if has('win32')
    au GUIEnter * simalt ~x
endif

if has('gui_running')
    set titlestring=GVIM
else
    set titlestring=VIM
endif

set nocompatible
set t_Co=256
set backspace=indent,eol,start
set belloff=all
set encoding=utf8
set mouse=a
set hidden
set noswapfile
set shortmess=I
set shortmess+=m
set clipboard=unnamed
set history=100
set suffixesadd+=.java
set langmenu=en_US
let $LANG = 'en_US'

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set splitbelow splitright

set hlsearch
set smartcase
set ignorecase
set incsearch
set wrapscan

autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_browse_split = 4

set path+=**
set wildmenu
set wildmode=list:longest

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

syntax on
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic='0'
colorscheme gruvbox
set background=dark
hi Cursor  guifg=#99dd99 guibg=#000000
hi iCursor guifg=#99dd99 guibg=#000000

set cul
hi CursorLine guifg=NONE guibg=#282828
autocmd InsertEnter * highlight CursorLine guifg=NONE guibg=#280000
autocmd InsertLeave * highlight CursorLine guifg=NONE guibg=#282828
augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

set guifont=Ubuntu_Mono:h18
set laststatus=0
set cmdheight=1
set showmode
set noshowcmd
set ruler
set rnu
set linespace=2
set foldcolumn=0

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
au InsertEnter * call clearmatches()

let mapleader = "\<Space>"
set timeoutlen=300

inoremap jj <ESC>
cnoremap jj <C-c>
tnoremap jj <C-\><C-n>
nnoremap n nzz
nnoremap N Nzz

noremap <Leader><tab> :echo "Switching to buffer...?\n" <bar> :ls<CR>:buffer<Space>
nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>
nnoremap <Leader>o :e <C-R>=expand("%:p:h") . "\\" <CR>
nnoremap <silent><expr> <Leader>f (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <Leader>s /
nnoremap <Leader>t :execute 'Lex ' . expand("%:p:h") <bar> :vertical resize 45<CR>
nnoremap <Leader>w :!
map <Leader>0 :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

set runtimepath+=~/fzf
nnoremap <leader>, :FZF<CR>

cnoremap <C-A>		<Home>
cnoremap <C-B>		<Left>
cnoremap <C-E>		<End>
cnoremap <C-F>		<Right>
cnoremap <C-N>		<Down>
cnoremap <C-P>		<Up>
cnoremap <Esc><C-B>	<S-Left>
cnoremap <Esc><C-F>	<S-Right>

let g:async = '0'
let g:quick_cmd1 = 'build'
let g:quick_cmd2 = 'run'

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

nnoremap <Leader>9 :call GlobalSearch()<CR>
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

nnoremap <Leader>4 :call SearchAndReplace()<CR>
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

command! CreateScratchBuffer :call CreateScratchBuffer()
function! CreateScratchBuffer()
    noswapfile hide vnew
    setlocal buftype=nofile
    setlocal bufhidden=wipe
endfunction

command! CountStringOccurences :call CountStringOccurences()
function CountStringOccurences()
    let what = input("Count what (in file): ")
    if what == ""
        return
    endif
    execute '%s/' . what . '//gn'
endfunction

command! GetTotalBufferCount :call GetTotalBufferCount()
function! GetTotalBufferCount()
    echo "Total buffer count: '" . len(getbufinfo({'buflisted':1})) . "'"
endfunction

command! Trimwhitespaces :call TrimWhiteSpaces()
function! TrimWhiteSpaces()
    %s/\s\+$//e
endfunction

command! FixFileIndentation :call FixFileIndentation()
function! FixFileIndentation()
	normal gg=G
endfunction

command! Time :call EchoCurrentTime()
function! EchoCurrentTime()
    echo strftime("%d-%m-%Y %H:%M")
endfunction

command! ToggleColorColumn :call ToggleColorColumn()
function! ToggleColorColumn()
    execute "set colorcolumn=" . (&colorcolumn == "" ? "120" : "")
endfunction

au VimEnter * :echo "The quick brown fox jumps over the lazy dog"

set nocompatible
set noerrorbells
set titlestring=Vim
set backspace=indent,eol,start
set clipboard=unnamed
set scrolloff=2
set autoread
set laststatus=0
set ttyfast
set mouse=a
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
set wrapscan

set hidden
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

nnoremap <Tab> %
vnoremap <Tab> %

nnoremap ß $
vnoremap ß $

map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>
nnoremap <Leader>b :b#<CR>
nnoremap <Leader>q :call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{"bufnr": v:val}'))<bar>vert copen<bar>wincmd =<CR>
nnoremap <Leader>t :Lex<bar> :vertical resize 42<CR>
nnoremap <Leader>w :!
nnoremap <Leader>s /
nnoremap <silent><expr> <Leader>f (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <F12> :e $MYVIMRC<CR>

nnoremap <Leader>o :call SwitchBuffer()<CR>
function! SwitchBuffer()
    echo "Current files loaded (" . len(getbufinfo({'buflisted':1})) . "):"
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

nnoremap <Leader>c :call CommentOut()<CR>
function! CommentOut()
    let l:last_pos = getpos(".")
    let l:current_file_type = &filetype
    if l:current_file_type == "python"
	    normal I# 
    elseif l:current_file_type == "ruby"
	    normal I# 
    elseif l:current_file_type == "xml"
	    normal I<!-- 
	    normal A -->
    elseif l:current_file_type == "vim"
	    normal I" 
    elseif l:current_file_type == "dosini"
	    normal I; 
    elseif l:current_file_type == "dosbatch"
	    normal IREM 
    else
	    normal I// 
    endif
	call setpos('.', l:last_pos)
endfunction

nnoremap <Leader>C :call InsertBlockComment()<CR>
function! InsertBlockComment()
    let l:last_pos = getpos(".")
    normal O/**
    normal o *
    normal o*
    normal o*/
	call setpos('.', l:last_pos)
endfunction

nnoremap <Leader>j :call GotoLine()<CR>
function! GotoLine()
    let l:nr = input("Goto line: ")
    if l:nr == ""
        return
    endif
    execute ':' . l:nr
endfunction

nnoremap <Leader>e :call ExecuteShellCommand()<CR>
function! ExecuteShellCommand()
    if has('win32')
        if has('terminal')
            let l:shell_cmd = input("Run shell command: ")
            if l:shell_cmd == ""
                return
            endif
            let l:buffer_name = "quick - command"
            let l:prev_term_buf_id = bufnr(l:buffer_name)
            if l:prev_term_buf_id != -1
                execute 'bd! ' . l:prev_term_buf_id
            endif
            set termwinsize=20x
            " @Todo: Implement this for different OS versions
            execute 'below terminal cmd /c ' . l:shell_cmd
            exe "f " l:buffer_name
        else
            echon "Your Vim does not have the internal Terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

nnoremap <Leader>k :call KillCurrentBuffer()<CR>
function! KillCurrentBuffer()
    let l:res = confirm("Kill this buffer?", "&Yes\n&No")
    if l:res == 1
        bd
    endif
endfunction

nnoremap <Leader>m :call ToggleTerminal()<CR>
function! ToggleTerminal()
    if has('terminal')
        let l:open_terms = term_list()
        let l:id = get(l:open_terms, 0)
        if l:id == 0
            echon "No terminal has been opened yet"
            return
        endif
        if l:id == bufnr('%')
            execute 'b#'
        else
            execute 'buffer ' . l:id
        endif
    else
        echon "Your Vim does not have the internal terminal."
    endif
endfunction

nnoremap <Leader>1 :call QueryReplace()<CR>
function! QueryReplace()
	let l:what = input("Replace: ")
	if l:what == ""
		return
	endif
	let l:with = input("Replace " . l:what . " with: ")
	if l:with == ""
		return
	endif
	execute '%s/' . l:what . '/' . l:with . '/gc'
endfunction

nnoremap <Leader>2 :call GlobalSearch()<CR>
function! GlobalSearch()
	let l:what = input("Search in project for: ")
    if l:what == ""
        return
    endif
    let l:ext = input("File extension to search in (type '*' for every file): ")
    if l:ext == ""
        return
    endif
    if winnr('$') > 1
        execute 'wincmd o'
    endif
    execute 'vimgrep' . '/' . l:what . '/gj' . '**/*.' . l:ext
    cw
    wincmd =
    echon "Done searching."
endfunction

nnoremap <leader>3 :call FileSearch()<CR>
function! FileSearch()
    let l:regex = input("Search in file for: ")
    if l:regex == ""
        return
    endif

    let l:buffer = bufnr('%')
    let l:lines = []
    execute ":%g/" . l:regex . "/let l:lines+=[{'bufnr':" . 'l:buffer' . ", 'lnum':" . "line('.')" . ", 'text': escape(getline('.'),'\"')}]"
    call setloclist(0, [], ' ', {'items' : l:lines})
    vert lopen
    wincmd =
endfunction

command! CountString :call CountString()
function! CountString()
    let l:pattern = input("Count string: ")
    if l:pattern == ""
        return
    endif
    execute '%s/' . l:pattern . '//ng'
endfunction

command! ToggleSpellCheck :setlocal spell! spelllang=en_us
command! Time :echo strftime("%d-%m-%Y %H:%M")
command! TrimWhiteSpaces :%s/\s\+$//e
command! ToggleColorColumn :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")
command! BufferCount :echo "Total buffers opened: '" . len(getbufinfo({'buflisted':1})) . "'"
command! FormatCode :normal gg=G
command! RotCode :normal ggVGg?

if has('gui_running')
    set titlestring=GVim
    set foldcolumn=1

    if has('win32')
        au GUIEnter * simalt ~x
    endif

    colorscheme solarized
    set background=dark
    hi SpecialChar guifg=#2aa198

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

    let g:font_name = "Ubuntu_Mono"
    let g:font_size = 18
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


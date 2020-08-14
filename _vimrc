au VimEnter * :echo "Today will be a better day!"

if has('win32')
    au GUIEnter * simalt ~x
endif

if has('gui_running')
    set titlestring=GVIM
else
    set titlestring=VIM
endif

set nocompatible
set scrolloff=0
set ttyfast
set backspace=indent,eol,start
set belloff=all
set encoding=utf8
set mouse=a
set hidden
set noswapfile
set shortmess=I
set shortmess+=m
set clipboard=unnamed
set scrolljump=-50
set history=100
set suffixesadd+=.java
set langmenu=en_US
let $LANG = 'en_US'
syntax on

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
set wildignore+=*.swp
set wildignore+=*.jmod
set wildignore+=*.o
set wildignore+=*.so
set wildignore+=*.dll
set wildignore+=*.jar
set wildignore+=*.zip
set wildignore+=*.tar
set wildignore+=*.class
set wildignore+=*.exe
set wildignore+=*.png
set wildignore+=*.jpg
set wildignore+=*.jpeg
set wildignore+=*.gif
set wildignore+=*/\vendor/*
set wildignore+=*/\.git/*
set wildignore+=*/\jre/*
set wildignore+=*/\jdk/*
set wildignore+=*/\lib/*
set wildignore+=*/\libs/*
set wildignore+=*/\bin/*
set wildignore+=*/\node_modules/*
set wildignore+=*/\target/*
set wildignore+=*/\tmp/*

set guioptions-=m
set guioptions-=T
set guioptions-=e
set guioptions-=L
set guioptions-=l
set guioptions-=r
set guioptions+=c
set guioptions+=!

set guicursor=n:block-Cursor-blinkon0
set guicursor+=v:block-Cursor-blinkon0
set guicursor+=c:block-Cursor-blinkon500
set guicursor+=i:block-Cursor-blinkon500
" set guicursor+=i-ci:ver30-iCursor-blinkon700

set background=dark
if has('gui_running')
    colorscheme magma
    set laststatus=2
else
    colorscheme hacky
    syntax off
    set laststatus=0
endif

set guifont=Consolas:h16
set statusline=%t:\%l,%v\ %=[%M]\ [B%n]\ \|%Y\|
set showmode
set noshowcmd
set ruler
set linespace=2
set foldcolumn=0
set cmdheight=1

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

nnoremap <Leader>g :call GotoLine()<CR>
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

nnoremap <Leader>m :call RunCmdCommandInTerminal("build", "Compilation-Buffer")<CR>
nnoremap <Leader>r :call RunCmdCommandInTerminal("run", "Running-Buffer")<CR>
function! RunCmdCommandInTerminal(command, buffername)
    if has('win32')
        if has('terminal')
            let prev_term_buf_id = bufnr(a:buffername)
            if prev_term_buf_id != -1
                execute 'bd! ' . prev_term_buf_id
            endif
            if winnr('$') > 1
                execute 'wincmd o'
            endif
            set termwinsize=200x
            execute 'vert terminal cmd /c' . a:command
            wincmd r
            exe "f "  a:buffername
            execute 'wincmd w'
        else
            echon "Your Vim does not have the internal Terminal."
        endif
    else
        echon "This functionality only works on Windows."
    endif
endfunction

nnoremap <Leader>w :call GlobalSearch()<CR>
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
    vertical cw
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

command! ToggleGUIStuff :call ToggleGUIStuff()
let g:gui_visible = 0
function! ToggleGUIStuff()
    if g:gui_visible == 0
        set guioptions+=m
        set guioptions+=T
        set guioptions+=e
        set guioptions+=r
        let g:gui_visible = 1
    else
        set guioptions-=m
        set guioptions-=T
        set guioptions-=e
        set guioptions-=L
        set guioptions-=l
        set guioptions-=r
        let g:gui_visible = 0
    endif
endfunction

command! ToggleFullScreen :call ToggleFullScreen()
function! ToggleFullScreen()
    if g:gui_visible == 1
        call ToggleGUIStuff()
    endif
    call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunction

function! MyMenuHandler(id, result)
    if a:result == 1
        call CreateScratchBuffer()
    elseif a:result == 2
        call CountStringOccurences()
    elseif a:result == 3
        call GetTotalBufferCount()
    elseif a:result == 4
        call TrimWhiteSpaces()
    elseif a:result == 5
        call FixFileIndentation()
    elseif a:result == 6
        call EchoCurrentTime()
    elseif a:result == 7
        call ToggleColorColumn()
    elseif a:result == 8
        if has('gui_running')
            call ToggleFullScreen()
        else
            echo "Only works in the GUI version of VIM!"
        endif
    elseif a:result == 9
        if has('gui_running')
            call ToggleGUIStuff()
        else
            echo "Only works in the GUI version of VIM!"
        endif
    elseif a:result == 10
        e $MYVIMRC
    elseif a:result == 11
        if has('gui_running')
            set guifont=*
        else
            echo "Only works in the GUI version of VIM!"
        endif
    elseif a:result == 12
        !start www.google.com
    elseif a:result == 13
        put =strftime(\"%c\")
    elseif a:result == 14
        !start .
    endif
endfunction

nnoremap <Leader>0 :call ShowMiscFunctionsPopup()<CR>
function! ShowMiscFunctionsPopup()
    call popup_menu(['create_scratch_buffer', 'count_string_occurences', 'get_total_buffer_count', 'trim_white_spaces', 'fix_file_indentation', 'echo_current_time', 'toggle_color_column', 'toggle_fullscreen', 'toggle_gui_stuff', 'open_vimrc', 'change_ui_font', 'open_google', 'insert_timestamp', 'open_explorer_here'], #{
        \ callback: 'MyMenuHandler',
        \ title: 'Miscellaneous functions',
        \ padding: [2, 1, 1, 1],
        \ highlight: 'MyPopupColor',
        \ minwidth: 50,
        \ minheight: 16,
        \ border: [1, 1, 1, 1],
        \ pos: 'center',
        \ borderhighlight: ['MyBorderColor'],
        \ })
endfunction


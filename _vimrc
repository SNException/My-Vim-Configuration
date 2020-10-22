au VimEnter * :echo "The quick brown fox jumps over the lazy dog"

set nocompatible
set noerrorbells
set backspace=indent,eol,start
set clipboard=unnamed
set titlestring=Vim

syntax on
set t_Co=256
set laststatus=0
set foldcolumn=0

set path+=**
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
set noswapfile

set shortmess=I
set shortmess+=m

set langmenu=en_US
let $LANG = 'en_US'

let java_ignore_javadoc=1

autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_browse_split = 4

hi ExtraWhitespace gui=NONE guibg=blue
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()
au InsertEnter * call clearmatches()
au BufWinEnter quickfix call clearmatches()
au BufWinEnter quickfix setlocal cul

let mapleader = "\<Space>"
set timeoutlen=300

inoremap jj <ESC>
cnoremap jj <C-c>
tnoremap jj <C-\><C-n>

nnoremap n nzz
nnoremap N Nzz

map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

nnoremap <Leader><Leader> :e <C-R>=expand("%:p:h") . "\\" <CR>
nnoremap <Leader>o :echo "Switch to buffer...?\n" <bar> :ls<CR>:buffer<Space>
nnoremap <Leader>q :call setqflist(map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), '{"bufnr": v:val}'))<bar>vert copen<bar>wincmd =<CR>
nnoremap <Leader>t :Lex<bar> :vertical resize 42<CR>
nnoremap <Leader>w :!
nnoremap <Leader>s /
nnoremap <silent><expr> <Leader>f (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <leader>0 :echo "Total buffers opened: '" . len(getbufinfo({'buflisted':1})) . "'"<CR>

nnoremap <Leader>c :call CommentOut()<CR>
function! CommentOut()
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

nnoremap <Leader>C :call InsertBlockComment()<CR>
function! InsertBlockComment()
    let last_pos = getpos(".")
    normal O/**
    normal o *
    normal o*
    normal o*/
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

nnoremap <Leader>m :call ToggleTerminal()<CR>
function! ToggleTerminal()
    if has('terminal')
        let open_terms = term_list()
        let id = get(open_terms, 0)
        if id == 0
            echon "No terminal has been opened yet"
            return
        endif
        if id == bufnr('%')
            execute 'b#'
        else
            execute 'buffer ' . id
        endif
    else
        echon "Your Vim does not have the internal Terminal."
    endif
endfunction

let g:font_size = 18

nnoremap <Leader>+ :call IncFontSize()<CR>
function! IncFontSize()
    let g:font_size = g:font_size + 1
    execute 'set guifont=Ubuntu_Mono:h' . g:font_size
endfunction

nnoremap <Leader>- :call DecFontSize()<CR>
function! DecFontSize()
    let g:font_size = g:font_size - 1
    execute 'set guifont=Ubuntu_Mono:h' . g:font_size
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

nnoremap <leader>3 :call SearchWithJumpWindow()<CR>
function! SearchWithJumpWindow()
    let regex = input("Enter regex to find in current file: ")
    if regex == ""
        return
    endif

    let buffer = bufnr('%')
    let b:lines =  []
    execute ":%g/" . regex . "/let b:lines+=[{'bufnr':" . 'buffer' . ", 'lnum':" . "line('.')" . ", 'text': escape(getline('.'),'\"')}]"
    call setloclist(0, [], ' ', {'items' : b:lines})
    vert lopen
    wincmd =
endfunction

nnoremap <Leader>4 :call ToggleSpellCheck()<CR>
function! ToggleSpellCheck()
  setlocal spell! spelllang=en_us
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

command! Time :call Time()
function! Time()
    echo strftime("%d-%m-%Y %H:%M")
endfunction

command! TrimWhiteSpaces :call TrimWhiteSpaces()
function! TrimWhiteSpaces()
    %s/\s\+$//e
endfunction


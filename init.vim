
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

" PLUGINS
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fxn/vim-monochrome'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
call plug#end()

" STYLE
set background=dark
colorscheme iceberg
let g:airline_theme='iceberg'
set cul
hi CursorLine guifg=NONE
hi Comment guifg=GRAY
hi Visual guibg=BLUE guifg=WHITE
hi TODO guifg=RED guibg=NONE
hi Note guifg=GREEN guibg=NONE
autocmd VimEnter,WinEnter * match Note /\<NOTE\>/

" MISC
set noswapfile
set hidden
set path=**
set scrolloff=4
set nohlsearch
set smartindent
set expandtab
set autoindent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set smartcase
set ignorecase

" MAPPINGS
inoremap jj <ESC>
cnoremap jj <C-c> 
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
tnoremap jj <C-\><C-n>
nnoremap n nzz
nnoremap N Nzz

let mapleader = "\<Space>"
nnoremap <Leader>b :!build.bat<CR>
nnoremap <Leader>r :!run.bat<CR>
nnoremap <Leader>0 :new<CR>:only<CR>
nnoremap <Leader>e :e %
nnoremap <Leader>c :call CommentOut()<CR>
nnoremap <Leader><tab> :buffers<CR>:buffer<Space>
nnoremap <Leader>f :find 
nnoremap <Leader><Esc> :call CloseAllBuffersExceptCurrent()<CR>
nnoremap <Leader><Enter> :call ToggleFullScreen()<CR>

function! CloseAllBuffersExceptCurrent()
	if confirm('Are you sure you wish to clear all other buffers?', "&Yes\n&No", 1) == 1
		:bufdo bd
	endif
endfunction

function! CommentOut()
	let last_pos = getpos(".")
	normal I//
	call setpos('.', last_pos)
endfunction

let s:fullscreen = 0
function! ToggleFullScreen()
	if s:fullscreen == 0
		call GuiWindowFullScreen(1)
		let s:fullscreen = 1
	else
		call GuiWindowFullScreen(0)
		let s:fullscreen = 0
	endif
endfunction


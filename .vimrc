" MY MAIN VIM CONFIGURATION FILE
" ##############################
" ##############################
" ##############################



" ========== GENERAL SETTINGS ==========

" always show line numbers
set nu 

" enable syntax highlighting in case when editing src files
syntax enable

" adjust formatting
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" define encoding
set encoding=utf-8

" set language to be always english
set langmenu=en_US
let $LANG='en_US'

" define threshold for text wrapping
set textwidth=80

" display all matching files when using 'find' command + tab
set wildmenu

" set font of GVIM
set guifont=Consolas:h14

" remove the menubar of GVIM
:set guioptions-=m 

" remove the toolbar of GVIM
:set guioptions-=T 

" remove the right-hand scrollbar of GVIM
:set guioptions-=r 

" remove the left-hand scrollbar of GVIM
:set guioptions-=L 



" ========== COLORSCHEME  ==========

" use a different colorscheme when running GVIM
if has("gui_running")
    colorscheme evening
else
    colorscheme default
endif



" ========== KEY MAPPING ==========

" remap splits switching keys
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" disable arrow keys in normal mode 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" disable arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" toogle highlighting when searching; also map it to the F3 key
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>



" ========== STATUSLINE SETTINGS ========== 

" use a different background color when using GVIM
if has("gui_running")
    hi StatusLine guibg = darkblue
endif

" always show the status line
set laststatus=2

" tail of the file name
set statusline =%t

" add file encoding to status line 
set statusline +=[%{strlen(&fenc)?&fenc:'none'},

" add file format to status line
set statusline +=%{&ff}]

" add help file tag to status line
set statusline +=%h

" add modified tag to status line
set statusline +=%m

" add read only flag to status line
set statusline +=%r

" add filetype to status line
set statusline +=%y

" add left/right separator to status line
set statusline+=%=     

" add cursor column to status line
set statusline+=%c,   

" add cursor line/total lines to status line
set statusline+=%l/%L 

" add percent through file to status line
set statusline+=\ %P



" ========== AUTOCOMPLETE WINDOW STYLING  ========== 

" color of the whole background
hi Pmenu ctermbg=green guibg=gray

" color fo the selected item
hi PmenuSel ctermbg=yellow

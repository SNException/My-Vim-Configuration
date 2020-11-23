" Colorscheme inspired by the emacs theme of Jonathan Blow.

" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jblow_old"

" Normal (fg/bg)
hi Normal                  gui=NONE guifg=#b6a997 guibg=#2a282a

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#1111ff
hi VisualNOS               gui=NONE guifg=NONE    guibg=#1111ff

" Comments
hi Comment                 gui=NONE guifg=yellow guibg=#2a282a
hi SpecialComment          gui=NONE guifg=yellow guibg=#2a282a
hi Todo                    gui=NONE guifg=yellow guibg=#2a282a
hi Note                    gui=NONE guifg=yellow guibg=#2a282a
hi javaDocTags             gui=NONE guifg=yellow guibg=#2a282a
hi javaDocParam            gui=NONE guifg=yellow guibg=#2a282a
hi javaDocSeeTagParam      gui=NONE guifg=yellow guibg=#2a282a
hi javaCommentTitle        gui=NONE guifg=yellow guibg=#2a282a

" Keywords I
hi Keyword                 gui=NONE guifg=#f4fffa guibg=#2a282a
hi Statement               gui=NONE guifg=#f4fffa guibg=#2a282a
hi Conditional             gui=NONE guifg=#f4fffa guibg=#2a282a
hi Repeat                  gui=NONE guifg=#f4fffa guibg=#2a282a
hi Exception               gui=NONE guifg=#f4fffa guibg=#2a282a
hi Operator                gui=NONE guifg=#f4fffa guibg=#2a282a
hi Include                 gui=NONE guifg=#89e2a1 guibg=#2a282a

" Keywords II
hi Define                  gui=NONE guifg=#89e2a1 guibg=#2a282a
hi Label                   gui=NONE guifg=#b6a997 guibg=#2a282a
hi Identifier              gui=NONE guifg=#b6a997 guibg=#2a282a
hi Special                 gui=NONE guifg=#f4fffa guibg=#2a282a
hi PreProc                 gui=NONE guifg=#f4fffa guibg=#2a282a
hi Function                gui=NONE guifg=#f4fffa guibg=#2a282a
hi Macro                   gui=NONE guifg=#f4fffa guibg=#2a282a
hi PreCondit               gui=NONE guifg=#f4fffa guibg=#2a282a
hi StorageClass            gui=NONE guifg=#f4fffa guibg=#2a282a
hi Structure               gui=NONE guifg=#f4fffa guibg=#2a282a
hi Typedef                 gui=NONE guifg=#f4fffa guibg=#2a282a

" Literals/Types
hi String                  gui=NONE guifg=gray guibg=#2a282a
hi Character               gui=NONE guifg=gray guibg=#2a282a
hi SpecialChar             gui=NONE guifg=gray guibg=#2a282a
hi Type                    gui=NONE guifg=#89e2a1 guibg=#2a282a
hi Constant                gui=NONE guifg=#7ad7cf guibg=#2a282a
hi Boolean                 gui=NONE guifg=#7ad7cf guibg=#2a282a

" Messages
hi WarningMsg              gui=NONE guifg=#b6a997 guibg=#2a282a
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#2a282a
hi MoreMsg 		           gui=NONE guifg=#b6a997 guibg=#2a282a
hi ModeMsg                 gui=NONE guifg=#b6a997 guibg=#2a282a

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#202020
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#202020
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#202020

" Statusline
hi StatusLine              gui=NONE guifg=#2a282a guibg=#777777
hi StatusLineNC            gui=NONE guifg=#2a282a guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#2a282a guibg=#777777
hi StatusLineTermNC        gui=NONE guifg=#2a282a guibg=#555555

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#b6a997
hi Pmenu      		       gui=NONE guifg=#b6a997 guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#b6a997
hi PmenuSbar 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi PmenuThumb 		       gui=NONE guifg=#b6a997 guibg=#2a282a

" Cursor
hi Cursor                  gui=NONE guifg=#2a282a guibg=#99dd99
hi iCursor                 gui=NONE guifg=#2a282a guibg=#99dd99
hi lCursor                 gui=NONE guifg=#2a282a guibg=#99dd99
hi CursorLine              gui=NONE guifg=NONE    guibg=#555555
hi CursorColumn            gui=NONE guifg=NONE    guibg=#555555

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#aa4444
hi IncSearch 		       gui=NONE guifg=#2a282a guibg=#aa4444

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#2a282a
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#2a282a
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#2a282a
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#2a282a

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#2a282a
hi DiffChange              gui=NONE guifg=#1111ee guibg=#2a282a
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#2a282a
hi DiffText  		       gui=NONE guifg=#b6a997 guibg=#2a282a

" Misc
hi VertSplit               gui=NONE guifg=#666666 guibg=#2a282a
hi EndOfBuffer 		       gui=NONE guifg=#c7baa8 guibg=#2a282a
hi Directory 		       gui=NONE guifg=#a1a1a1 guibg=#2a282a
hi Error                   gui=NONE guifg=#b6a997 guibg=#2a282a
hi NonText  		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi Tag                     gui=NONE guifg=#b6a997 guibg=#2a282a
hi Delimiter               gui=NONE guifg=#b6a997 guibg=#2a282a
hi MatchParen              gui=NONE guifg=#b6a997 guibg=#707070
hi ColorColumn             gui=NONE guifg=#b6a997 guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#b6a997 guibg=#2a282a
hi FoldColumn              gui=NONE guifg=#b6a997 guibg=#2a282a
hi SpecialKey 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi ToolbarLine             gui=NONE guifg=#b6a997 guibg=#2a282a
hi ToolbarButton           gui=NONE guifg=#b6a997 guibg=#2a282a
hi Question                gui=NONE guifg=#b6a997 guibg=#2a282a
hi Title                   gui=NONE guifg=#b6a997 guibg=#2a282a
hi SignColumn 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi Conceal   		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi SpellBad 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi SpellCap   		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi SpellRare 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi SpellLocal 		       gui=NONE guifg=#b6a997 guibg=#2a282a
hi QuickFixLine            gui=NONE guifg=#b6a997 guibg=#2a282a
hi Underlined              gui=NONE guifg=#b6a997 guibg=#2a282a
hi Ignore                  gui=NONE guifg=#b6a997 guibg=#2a282a
hi Debug                   gui=NONE guifg=#b6a997 guibg=#2a282a
hi multiple_cursors_curso  gui=NONE guifg=#b6a997 guibg=#2a282a
hi multiple_cursors_visual gui=NONE guifg=#b6a997 guibg=#2a282a
hi markdownH1              gui=NONE guifg=#b6a997 guibg=#2a282a
hi markdownH2              gui=NONE guifg=#b6a997 guibg=#2a282a
hi markdownH3              gui=NONE guifg=#b6a997 guibg=#2a282a
hi markdownLinkText        gui=NONE guifg=#b6a997 guibg=#2a282a


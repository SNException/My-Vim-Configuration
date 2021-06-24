" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"

" Normal (fg/bg)
" #fafbe5
" fcffaf
hi Normal                  gui=NONE guifg=#c4c4c4 guibg=#151515

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#1111ff
hi VisualNOS               gui=NONE guifg=NONE    guibg=#1111ff

" Comments
hi Comment                 gui=NONE guifg=#656565 guibg=#151515
hi SpecialComment          gui=NONE guifg=#656565 guibg=#151515
hi Todo                    gui=NONE guifg=#656565 guibg=#151515
hi Note                    gui=NONE guifg=#656565 guibg=#151515
hi javaDocTags             gui=NONE guifg=#656565 guibg=#151515
hi javaDocParam            gui=NONE guifg=#656565 guibg=#151515
hi javaDocSeeTagParam      gui=NONE guifg=#656565 guibg=#151515
hi javaCommentTitle        gui=NONE guifg=#656565 guibg=#151515

" Keywords I
hi Keyword                 gui=NONE guifg=#c4c4c4 guibg=#151515
hi Statement               gui=NONE guifg=#c4c4c4 guibg=#151515
hi Conditional             gui=NONE guifg=#c4c4c4 guibg=#151515
hi Repeat                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi Exception               gui=NONE guifg=#c4c4c4 guibg=#151515
hi Operator                gui=NONE guifg=#c4c4c4 guibg=#151515
hi Include                 gui=NONE guifg=#c4c4c4 guibg=#151515

" Keywords II
hi Define                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi Label                   gui=NONE guifg=#c4c4c4 guibg=#151515
hi Identifier              gui=NONE guifg=#c4c4c4 guibg=#151515
hi Special                 gui=NONE guifg=#c4c4c4 guibg=#151515
hi PreProc                 gui=NONE guifg=#c4c4c4 guibg=#151515
hi Function                gui=NONE guifg=#c4c4c4 guibg=#151515
hi Macro                   gui=NONE guifg=#c4c4c4 guibg=#151515
hi PreCondit               gui=NONE guifg=#c4c4c4 guibg=#151515
hi StorageClass            gui=NONE guifg=#c4c4c4 guibg=#151515
hi Structure               gui=NONE guifg=#c4c4c4 guibg=#151515
hi Typedef                 gui=NONE guifg=#c4c4c4 guibg=#151515

" Literals/Types
hi Number                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi String                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi Character               gui=NONE guifg=#c4c4c4 guibg=#151515
hi SpecialChar             gui=NONE guifg=#c4c4c4 guibg=#151515
hi Type                    gui=NONE guifg=#c4c4c4 guibg=#151515
hi Constant                gui=NONE guifg=#c4c4c4 guibg=#151515
hi Boolean                 gui=NONE guifg=#c4c4c4 guibg=#151515

" Messages
hi WarningMsg              gui=NONE guifg=#c4c4c4 guibg=#151515
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#151515
hi MoreMsg 		           gui=NONE guifg=#c4c4c4 guibg=#151515
hi ModeMsg                 gui=NONE guifg=#c4c4c4 guibg=#151515

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#202020
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#202020
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#202020

" Statusline
hi StatusLine              gui=NONE guifg=#e9e9e9 guibg=#424244
hi StatusLineNC            gui=NONE guifg=#aaaaaa guibg=#424242
hi StatusLineTerm          gui=NONE guifg=#e9e9e9 guibg=#424242
hi StatusLineTermNC        gui=NONE guifg=#aaaaaa guibg=#424242

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#c4c4c4
hi Pmenu      		       gui=NONE guifg=#c4c4c4 guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#c4c4c4
hi PmenuSbar 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi PmenuThumb 		       gui=NONE guifg=#c4c4c4 guibg=#151515

" Cursor
hi Cursor                  gui=NONE guifg=#151515 guibg=#cccccc
hi iCursor                 gui=NONE guifg=#151515 guibg=#cccccc
hi lCursor                 gui=NONE guifg=#151515 guibg=#cccccc
hi CursorLine              gui=NONE guifg=NONE    guibg=#383838
hi CursorColumn            gui=NONE guifg=NONE    guibg=#383838

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#666666
hi IncSearch 		       gui=NONE guifg=#151515 guibg=#ffff00

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#151515
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#151515
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#151515
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#151515

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#151515
hi DiffChange              gui=NONE guifg=#1111ee guibg=#151515
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#151515
hi DiffText  		       gui=NONE guifg=#c4c4c4 guibg=#151515

" Misc
hi VertSplit               gui=NONE guifg=#484848 guibg=#484848
hi EndOfBuffer 		       gui=NONE guifg=#555555 guibg=#151515
hi Directory 		       gui=NONE guifg=#cccccc guibg=#444444
hi Error                   gui=NONE guifg=#c4c4c4 guibg=#151515
hi NonText  		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi Tag                     gui=NONE guifg=#c4c4c4 guibg=#151515
hi Delimiter               gui=NONE guifg=#c4c4c4 guibg=#151515
hi MatchParen              gui=NONE guifg=#c4c4c4 guibg=#707070
hi ColorColumn             gui=NONE guifg=#c4c4c4 guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi FoldColumn              gui=NONE guifg=#c4c4c4 guibg=#191919
hi SpecialKey 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi ToolbarLine             gui=NONE guifg=#c4c4c4 guibg=#151515
hi ToolbarButton           gui=NONE guifg=#c4c4c4 guibg=#151515
hi Question                gui=NONE guifg=#c4c4c4 guibg=#151515
hi Title                   gui=NONE guifg=#c4c4c4 guibg=#151515
hi SignColumn 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi Conceal   		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi SpellBad 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi SpellCap   		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi SpellRare 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi SpellLocal 		       gui=NONE guifg=#c4c4c4 guibg=#151515
hi QuickFixLine            gui=NONE guifg=#c4c4c4 guibg=#151515
hi Underlined              gui=NONE guifg=#c4c4c4 guibg=#151515
hi Ignore                  gui=NONE guifg=#c4c4c4 guibg=#151515
hi Debug                   gui=NONE guifg=#c4c4c4 guibg=#151515
hi multiple_cursors_curso  gui=NONE guifg=#c4c4c4 guibg=#151515
hi multiple_cursors_visual gui=NONE guifg=#c4c4c4 guibg=#151515
hi markdownH1              gui=NONE guifg=#c4c4c4 guibg=#151515
hi markdownH2              gui=NONE guifg=#c4c4c4 guibg=#151515
hi markdownH3              gui=NONE guifg=#c4c4c4 guibg=#151515
hi markdownLinkText        gui=NONE guifg=#c4c4c4 guibg=#151515


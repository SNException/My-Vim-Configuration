" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "despair"

" Normal (fg/bg)
hi Normal                  gui=NONE guifg=#bebebe guibg=#100000

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#444444
hi VisualNOS               gui=NONE guifg=NONE    guibg=#444444

" Comments
" #aa1111
hi Comment                 gui=NONE guifg=#aa0000 guibg=#100000
hi SpecialComment          gui=NONE guifg=#aa0000 guibg=#100000
hi Todo                    gui=NONE guifg=#aa0000 guibg=#100000
hi Note                    gui=NONE guifg=#aa0000 guibg=#100000
hi javaDocTags             gui=NONE guifg=#aa0000 guibg=#100000
hi javaDocParam            gui=NONE guifg=#aa0000 guibg=#100000
hi javaDocSeeTagParam      gui=NONE guifg=#aa0000 guibg=#100000
hi javaCommentTitle        gui=NONE guifg=#aa0000 guibg=#100000

" Keywords I
hi Keyword                 gui=NONE guifg=#bebebe guibg=#100000
hi Statement               gui=NONE guifg=#bebebe guibg=#100000
hi Conditional             gui=NONE guifg=#bebebe guibg=#100000
hi Repeat                  gui=NONE guifg=#bebebe guibg=#100000
hi Exception               gui=NONE guifg=#bebebe guibg=#100000
hi Operator                gui=NONE guifg=#bebebe guibg=#100000
hi Include                 gui=NONE guifg=#bebebe guibg=#100000

" Keywords II
hi Define                  gui=NONE guifg=#bebebe guibg=#100000
hi Label                   gui=NONE guifg=#bebebe guibg=#100000
hi Identifier              gui=NONE guifg=#bebebe guibg=#100000
hi Special                 gui=NONE guifg=#bebebe guibg=#100000
hi PreProc                 gui=NONE guifg=#bebebe guibg=#100000
hi Function                gui=NONE guifg=#bebebe guibg=#100000
hi Macro                   gui=NONE guifg=#bebebe guibg=#100000
hi PreCondit               gui=NONE guifg=#bebebe guibg=#100000
hi StorageClass            gui=NONE guifg=#bebebe guibg=#100000
hi Structure               gui=NONE guifg=#bebebe guibg=#100000
hi Typedef                 gui=NONE guifg=#bebebe guibg=#100000

" Literals/Types
hi Number                  gui=NONE guifg=#bebebe guibg=#100000
hi String                  gui=NONE guifg=#bebebe guibg=#100000
hi Character               gui=NONE guifg=#bebebe guibg=#100000
hi SpecialChar             gui=NONE guifg=#bebebe guibg=#100000
hi Type                    gui=NONE guifg=#bebebe guibg=#100000
hi Constant                gui=NONE guifg=#bebebe guibg=#100000
hi Boolean                 gui=NONE guifg=#bebebe guibg=#100000

" Messages
hi WarningMsg              gui=NONE guifg=#bebebe guibg=#100000
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#100000
hi MoreMsg 		           gui=NONE guifg=#bebebe guibg=#100000
hi ModeMsg                 gui=NONE guifg=#bebebe guibg=#100000

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#100000
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#100000
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#100000

" Statusline
hi StatusLine              gui=NONE guifg=#100000 guibg=#777777
hi StatusLineNC            gui=NONE guifg=#100000 guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#100000 guibg=#777777
hi StatusLineTermNC        gui=NONE guifg=#100000 guibg=#555555

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#bebebe
hi Pmenu      		       gui=NONE guifg=#bebebe guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#bebebe
hi PmenuSbar 		       gui=NONE guifg=#bebebe guibg=#100000
hi PmenuThumb 		       gui=NONE guifg=#bebebe guibg=#100000

" Cursor
hi Cursor                  gui=NONE guifg=#100000 guibg=#cccccc
hi iCursor                 gui=NONE guifg=#100000 guibg=#cccccc
hi lCursor                 gui=NONE guifg=#100000 guibg=#cccccc
hi CursorLine              gui=NONE guifg=NONE    guibg=#555555
hi CursorColumn            gui=NONE guifg=NONE    guibg=#555555

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=#100000 guibg=#ffff00

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#100000
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#100000
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#100000
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#100000

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#100000
hi DiffChange              gui=NONE guifg=#1111ee guibg=#100000
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#100000
hi DiffText  		       gui=NONE guifg=#bebebe guibg=#100000

" Misc
hi VertSplit               gui=NONE guifg=#666666 guibg=#666666
hi EndOfBuffer 		       gui=NONE guifg=#555555 guibg=#100000
hi Directory 		       gui=NONE guifg=#a1a1a1 guibg=#100000
hi Error                   gui=NONE guifg=#bebebe guibg=#100000
hi NonText  		       gui=NONE guifg=#bebebe guibg=#100000
hi Tag                     gui=NONE guifg=#bebebe guibg=#100000
hi Delimiter               gui=NONE guifg=#bebebe guibg=#100000
hi MatchParen              gui=NONE guifg=#bebebe guibg=#707070
hi ColorColumn             gui=NONE guifg=#bebebe guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#bebebe guibg=#100000
hi FoldColumn              gui=NONE guifg=#bebebe guibg=#191919
hi SpecialKey 		       gui=NONE guifg=#bebebe guibg=#100000
hi ToolbarLine             gui=NONE guifg=#bebebe guibg=#100000
hi ToolbarButton           gui=NONE guifg=#bebebe guibg=#100000
hi Question                gui=NONE guifg=#bebebe guibg=#100000
hi Title                   gui=NONE guifg=#bebebe guibg=#100000
hi SignColumn 		       gui=NONE guifg=#bebebe guibg=#100000
hi Conceal   		       gui=NONE guifg=#bebebe guibg=#100000
hi SpellBad 		       gui=NONE guifg=#bebebe guibg=#100000
hi SpellCap   		       gui=NONE guifg=#bebebe guibg=#100000
hi SpellRare 		       gui=NONE guifg=#bebebe guibg=#100000
hi SpellLocal 		       gui=NONE guifg=#bebebe guibg=#100000
hi QuickFixLine            gui=NONE guifg=#bebebe guibg=#100000
hi Underlined              gui=NONE guifg=#bebebe guibg=#100000
hi Ignore                  gui=NONE guifg=#bebebe guibg=#100000
hi Debug                   gui=NONE guifg=#bebebe guibg=#100000
hi multiple_cursors_curso  gui=NONE guifg=#bebebe guibg=#100000
hi multiple_cursors_visual gui=NONE guifg=#bebebe guibg=#100000
hi markdownH1              gui=NONE guifg=#bebebe guibg=#100000
hi markdownH2              gui=NONE guifg=#bebebe guibg=#100000
hi markdownH3              gui=NONE guifg=#bebebe guibg=#100000
hi markdownLinkText        gui=NONE guifg=#bebebe guibg=#100000


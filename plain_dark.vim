" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "plain_dark"

" Normal (fg/bg)
hi Normal                  gui=NONE guifg=#b9b9b9 guibg=#323232

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#1111ff
hi VisualNOS               gui=NONE guifg=NONE    guibg=#1111ff

" Comments
hi Comment                 gui=NONE guifg=#fc2caf guibg=#323232
hi SpecialComment          gui=NONE guifg=#fc2caf guibg=#323232
hi Todo                    gui=NONE guifg=#fc2caf guibg=#323232
hi Note                    gui=NONE guifg=#fc2caf guibg=#323232
hi javaDocTags             gui=NONE guifg=#fc2caf guibg=#323232
hi javaDocParam            gui=NONE guifg=#fc2caf guibg=#323232
hi javaDocSeeTagParam      gui=NONE guifg=#fc2caf guibg=#323232
hi javaCommentTitle        gui=NONE guifg=#fc2caf guibg=#323232

" Keywords I
hi Keyword                 gui=NONE guifg=#b9b9b9 guibg=#323232
hi Statement               gui=NONE guifg=#b9b9b9 guibg=#323232
hi Conditional             gui=NONE guifg=#b9b9b9 guibg=#323232
hi Repeat                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi Exception               gui=NONE guifg=#b9b9b9 guibg=#323232
hi Operator                gui=NONE guifg=#b9b9b9 guibg=#323232
hi Include                 gui=NONE guifg=#b9b9b9 guibg=#323232

" Keywords II
hi Define                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi Label                   gui=NONE guifg=#b9b9b9 guibg=#323232
hi Identifier              gui=NONE guifg=#b9b9b9 guibg=#323232
hi Special                 gui=NONE guifg=#b9b9b9 guibg=#323232
hi PreProc                 gui=NONE guifg=#b9b9b9 guibg=#323232
hi Function                gui=NONE guifg=#b9b9b9 guibg=#323232
hi Macro                   gui=NONE guifg=#b9b9b9 guibg=#323232
hi PreCondit               gui=NONE guifg=#b9b9b9 guibg=#323232
hi StorageClass            gui=NONE guifg=#b9b9b9 guibg=#323232
hi Structure               gui=NONE guifg=#b9b9b9 guibg=#323232
hi Typedef                 gui=NONE guifg=#b9b9b9 guibg=#323232

" Literals/Types
hi Number                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi String                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi Character               gui=NONE guifg=#b9b9b9 guibg=#323232
hi SpecialChar             gui=NONE guifg=#b9b9b9 guibg=#323232
hi Type                    gui=NONE guifg=#b9b9b9 guibg=#323232
hi Constant                gui=NONE guifg=#b9b9b9 guibg=#323232
hi Boolean                 gui=NONE guifg=#b9b9b9 guibg=#323232

" Messages
hi WarningMsg              gui=NONE guifg=#b9b9b9 guibg=#323232
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#323232
hi MoreMsg 		           gui=NONE guifg=#b9b9b9 guibg=#323232
hi ModeMsg                 gui=NONE guifg=#b9b9b9 guibg=#323232

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#404040
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#404040
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#404040

" Statusline
hi StatusLine              gui=NONE guifg=#e9e9e9 guibg=#424244
hi StatusLineNC            gui=NONE guifg=#b9b9b9 guibg=#424242
hi StatusLineTerm          gui=NONE guifg=#e9e9e9 guibg=#424242
hi StatusLineTermNC        gui=NONE guifg=#b9b9b9 guibg=#424242

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#b9b9b9
hi Pmenu      		       gui=NONE guifg=#b9b9b9 guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#b9b9b9
hi PmenuSbar 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi PmenuThumb 		       gui=NONE guifg=#b9b9b9 guibg=#323232

" Cursor
hi Cursor                  gui=NONE guifg=#323232 guibg=#cccccc
hi iCursor                 gui=NONE guifg=#323232 guibg=#cccccc
hi lCursor                 gui=NONE guifg=#323232 guibg=#cccccc
hi CursorLine              gui=NONE guifg=NONE    guibg=#383838
hi CursorColumn            gui=NONE guifg=NONE    guibg=#383838

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#666666
hi IncSearch 		       gui=NONE guifg=#323232 guibg=#ffff00

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#323232
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#323232
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#323232
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#323232

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#323232
hi DiffChange              gui=NONE guifg=#1111ee guibg=#323232
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#323232
hi DiffText  		       gui=NONE guifg=#b9b9b9 guibg=#323232

" Misc
hi VertSplit               gui=NONE guifg=#666666 guibg=#666666
hi EndOfBuffer 		       gui=NONE guifg=#555555 guibg=#323232
hi Directory 		       gui=NONE guifg=#cccccc guibg=#444444
hi Error                   gui=NONE guifg=#b9b9b9 guibg=#323232
hi NonText  		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi Tag                     gui=NONE guifg=#b9b9b9 guibg=#323232
hi Delimiter               gui=NONE guifg=#b9b9b9 guibg=#323232
hi MatchParen              gui=NONE guifg=#b9b9b9 guibg=#707070
hi ColorColumn             gui=NONE guifg=#b9b9b9 guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi FoldColumn              gui=NONE guifg=#b9b9b9 guibg=#191919
hi SpecialKey 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi ToolbarLine             gui=NONE guifg=#b9b9b9 guibg=#323232
hi ToolbarButton           gui=NONE guifg=#b9b9b9 guibg=#323232
hi Question                gui=NONE guifg=#b9b9b9 guibg=#323232
hi Title                   gui=NONE guifg=#b9b9b9 guibg=#323232
hi SignColumn 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi Conceal   		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi SpellBad 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi SpellCap   		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi SpellRare 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi SpellLocal 		       gui=NONE guifg=#b9b9b9 guibg=#323232
hi QuickFixLine            gui=NONE guifg=#b9b9b9 guibg=#323232
hi Underlined              gui=NONE guifg=#b9b9b9 guibg=#323232
hi Ignore                  gui=NONE guifg=#b9b9b9 guibg=#323232
hi Debug                   gui=NONE guifg=#b9b9b9 guibg=#323232
hi multiple_cursors_curso  gui=NONE guifg=#b9b9b9 guibg=#323232
hi multiple_cursors_visual gui=NONE guifg=#b9b9b9 guibg=#323232
hi markdownH1              gui=NONE guifg=#b9b9b9 guibg=#323232
hi markdownH2              gui=NONE guifg=#b9b9b9 guibg=#323232
hi markdownH3              gui=NONE guifg=#b9b9b9 guibg=#323232
hi markdownLinkText        gui=NONE guifg=#b9b9b9 guibg=#323232


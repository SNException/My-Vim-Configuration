" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"

" Normal (fg/bg)
" #1c3137
" #303841
hi Normal                  gui=NONE guifg=#cecebe guibg=#1c3137

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#1111ff
hi VisualNOS               gui=NONE guifg=NONE    guibg=#1111ff

" Comments
" #eeee00
hi Comment                 gui=NONE guifg=#44ee44 guibg=#1c3137
hi SpecialComment          gui=NONE guifg=#44ee44 guibg=#1c3137
hi Todo                    gui=NONE guifg=#44ee44 guibg=#1c3137
hi Note                    gui=NONE guifg=#44ee44 guibg=#1c3137
hi javaDocTags             gui=NONE guifg=#44ee44 guibg=#1c3137
hi javaDocParam            gui=NONE guifg=#44ee44 guibg=#1c3137
hi javaDocSeeTagParam      gui=NONE guifg=#44ee44 guibg=#1c3137
hi javaCommentTitle        gui=NONE guifg=#44ee44 guibg=#1c3137

" Keywords I
hi Keyword                 gui=NONE guifg=#ff7070 guibg=#1c3137
hi Statement               gui=NONE guifg=#ff7070 guibg=#1c3137
hi Conditional             gui=NONE guifg=#ff7070 guibg=#1c3137
hi Repeat                  gui=NONE guifg=#ff7070 guibg=#1c3137
hi Exception               gui=NONE guifg=#ff7070 guibg=#1c3137
hi Operator                gui=NONE guifg=#ff7070 guibg=#1c3137
hi Include                 gui=NONE guifg=#aaffaa guibg=#1c3137
hi Label                   gui=NONE guifg=#ff7070 guibg=#1c3137

" Keywords II
hi Define                  gui=NONE guifg=#aaffaa guibg=#1c3137
hi Identifier              gui=NONE guifg=#ff7070 guibg=#1c3137
hi Special                 gui=NONE guifg=#ff7070 guibg=#1c3137
hi PreProc                 gui=NONE guifg=#ff7070 guibg=#1c3137
hi Function                gui=NONE guifg=#ff7070 guibg=#1c3137
hi Macro                   gui=NONE guifg=#ff7070 guibg=#1c3137
hi PreCondit               gui=NONE guifg=#ff7070 guibg=#1c3137
hi StorageClass            gui=NONE guifg=#ff7070 guibg=#1c3137
hi Structure               gui=NONE guifg=#ff7070 guibg=#1c3137
hi Typedef                 gui=NONE guifg=#ff7070 guibg=#1c3137

" Literals/Types
hi Number                  gui=NONE guifg=#ffcccc guibg=#1c3137
hi String                  gui=NONE guifg=#aaaaaa guibg=#1c3137
hi Character               gui=NONE guifg=#aaaaaa guibg=#1c3137
hi SpecialChar             gui=NONE guifg=#aaaaaa guibg=#1c3137
hi Type                    gui=NONE guifg=#ffcccc guibg=#1c3137
hi Constant                gui=NONE guifg=#ffcccc guibg=#1c3137
hi Boolean                 gui=NONE guifg=#ffcccc guibg=#1c3137

" Messages
hi WarningMsg              gui=NONE guifg=#cecebe guibg=#1c3137
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#1c3137
hi MoreMsg 		           gui=NONE guifg=#cecebe guibg=#1c3137
hi ModeMsg                 gui=NONE guifg=#cecebe guibg=#1c3137

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#202020
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#202020
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#202020

" Statusline
hi StatusLine              gui=NONE guifg=#000000 guibg=#777777
hi StatusLineNC            gui=NONE guifg=#000000 guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#000000 guibg=#777777
hi StatusLineTermNC        gui=NONE guifg=#000000 guibg=#555555

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#cecebe
hi Pmenu      		       gui=NONE guifg=#cecebe guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#cecebe
hi PmenuSbar 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi PmenuThumb 		       gui=NONE guifg=#cecebe guibg=#1c3137

" Cursor
hi Cursor                  gui=NONE guifg=#1c3137 guibg=#aaffaa
hi iCursor                 gui=NONE guifg=#1c3137 guibg=#aaffaa
hi lCursor                 gui=NONE guifg=#1c3137 guibg=#ffffff
hi CursorLine              gui=NONE guifg=NONE    guibg=#555555
hi CursorColumn            gui=NONE guifg=NONE    guibg=#555555

" Searching
hi Search 		           gui=NONE guifg=#000000 guibg=#666600
hi IncSearch 		       gui=bold guifg=#1c3137 guibg=#ffff00

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#1c3137
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#1c3137
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#1c3137
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#1c3137

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#1c3137
hi DiffChange              gui=NONE guifg=#1111ee guibg=#1c3137
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#1c3137
hi DiffText  		       gui=NONE guifg=#cecebe guibg=#1c3137

" Misc
hi VertSplit               gui=NONE guifg=#666666 guibg=#666666
hi EndOfBuffer 		       gui=NONE guifg=#1c3137 guibg=#1c3137
hi Directory 		       gui=NONE guifg=#a1a1a1 guibg=#1c3137
hi Error                   gui=NONE guifg=#cecebe guibg=#1c3137
hi NonText  		       gui=NONE guifg=#cecebe guibg=#1c3137
hi Tag                     gui=NONE guifg=#cecebe guibg=#1c3137
hi Delimiter               gui=NONE guifg=#cecebe guibg=#1c3137
hi MatchParen              gui=NONE guifg=#cecebe guibg=#707070
hi ColorColumn             gui=NONE guifg=#cecebe guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#cecebe guibg=#1c3137
hi FoldColumn              gui=NONE guifg=#cecebe guibg=#242424
hi SpecialKey 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi ToolbarLine             gui=NONE guifg=#cecebe guibg=#1c3137
hi ToolbarButton           gui=NONE guifg=#cecebe guibg=#1c3137
hi Question                gui=NONE guifg=#cecebe guibg=#1c3137
hi Title                   gui=NONE guifg=#cecebe guibg=#1c3137
hi SignColumn 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi Conceal   		       gui=NONE guifg=#cecebe guibg=#1c3137
hi SpellBad 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi SpellCap   		       gui=NONE guifg=#cecebe guibg=#1c3137
hi SpellRare 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi SpellLocal 		       gui=NONE guifg=#cecebe guibg=#1c3137
hi QuickFixLine            gui=NONE guifg=#cecebe guibg=#1c3137
hi Underlined              gui=NONE guifg=#cecebe guibg=#1c3137
hi Ignore                  gui=NONE guifg=#cecebe guibg=#1c3137
hi Debug                   gui=NONE guifg=#cecebe guibg=#1c3137
hi multiple_cursors_curso  gui=NONE guifg=#cecebe guibg=#1c3137
hi multiple_cursors_visual gui=NONE guifg=#cecebe guibg=#1c3137
hi markdownH1              gui=NONE guifg=#cecebe guibg=#1c3137
hi markdownH2              gui=NONE guifg=#cecebe guibg=#1c3137
hi markdownH3              gui=NONE guifg=#cecebe guibg=#1c3137
hi markdownLinkText        gui=NONE guifg=#cecebe guibg=#1c3137


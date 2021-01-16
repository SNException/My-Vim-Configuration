" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "plain"

" Normal (fg/bg)
hi Normal                  gui=NONE guifg=#333333 guibg=#fefefe

" Visual/Selection
hi Visual				   gui=NONE guifg=#ffffff    guibg=#4444ff
hi VisualNOS               gui=NONE guifg=#ffffff    guibg=#4444ff

" Comments
hi Comment                 gui=NONE guifg=#11aa11 guibg=#fefefe
hi SpecialComment          gui=NONE guifg=#11aa11 guibg=#fefefe
hi Todo                    gui=NONE guifg=#11aa11 guibg=#fefefe
hi Note                    gui=NONE guifg=#11aa11 guibg=#fefefe
hi javaDocTags             gui=NONE guifg=#11aa11 guibg=#fefefe
hi javaDocParam            gui=NONE guifg=#11aa11 guibg=#fefefe
hi javaDocSeeTagParam      gui=NONE guifg=#11aa11 guibg=#fefefe
hi javaCommentTitle        gui=NONE guifg=#11aa11 guibg=#fefefe

" Keywords I
hi Keyword                 gui=NONE guifg=#333333 guibg=#fefefe
hi Statement               gui=NONE guifg=#333333 guibg=#fefefe
hi Conditional             gui=NONE guifg=#333333 guibg=#fefefe
hi Repeat                  gui=NONE guifg=#333333 guibg=#fefefe
hi Exception               gui=NONE guifg=#333333 guibg=#fefefe
hi Operator                gui=NONE guifg=#333333 guibg=#fefefe
hi Include                 gui=NONE guifg=#333333 guibg=#fefefe

" Keywords II
hi Define                  gui=NONE guifg=#333333 guibg=#fefefe
hi Label                   gui=NONE guifg=#333333 guibg=#fefefe
hi Identifier              gui=NONE guifg=#333333 guibg=#fefefe
hi Special                 gui=NONE guifg=#333333 guibg=#fefefe
hi PreProc                 gui=NONE guifg=#333333 guibg=#fefefe
hi Function                gui=NONE guifg=#333333 guibg=#fefefe
hi Macro                   gui=NONE guifg=#333333 guibg=#fefefe
hi PreCondit               gui=NONE guifg=#333333 guibg=#fefefe
hi StorageClass            gui=NONE guifg=#333333 guibg=#fefefe
hi Structure               gui=NONE guifg=#333333 guibg=#fefefe
hi Typedef                 gui=NONE guifg=#333333 guibg=#fefefe

" Literals/Types
hi Number                  gui=NONE guifg=#333333 guibg=#fefefe
hi String                  gui=NONE guifg=#333333 guibg=#fefefe
hi Character               gui=NONE guifg=#333333 guibg=#fefefe
hi SpecialChar             gui=NONE guifg=#333333 guibg=#fefefe
hi Type                    gui=NONE guifg=#333333 guibg=#fefefe
hi Constant                gui=NONE guifg=#333333 guibg=#fefefe
hi Boolean                 gui=NONE guifg=#333333 guibg=#fefefe

" Messages
hi WarningMsg              gui=NONE guifg=#333333 guibg=#fefefe
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#fefefe
hi MoreMsg 		           gui=NONE guifg=#333333 guibg=#fefefe
hi ModeMsg                 gui=NONE guifg=#333333 guibg=#fefefe

" Tabs
hi TabLine       		   gui=NONE guifg=#a0a0a0 guibg=#202020
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#202020
hi TabLineFill  		   gui=NONE guifg=#a0a0a0 guibg=#202020

" Statusline
hi StatusLine              gui=NONE guifg=#fefefe guibg=#777777
hi StatusLineNC            gui=NONE guifg=#fefefe guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#fefefe guibg=#777777
hi StatusLineTermNC        gui=NONE guifg=#fefefe guibg=#555555

" Autocomplete
hi WildMenu                gui=bold guifg=#444444 guibg=#aaaaaa
hi Pmenu      		       gui=NONE guifg=#333333 guibg=#aaaaaa
hi PmenuSel   		       gui=NONE guifg=#999999 guibg=#333333
hi PmenuSbar 		       gui=NONE guifg=#333333 guibg=#fefefe
hi PmenuThumb 		       gui=NONE guifg=#333333 guibg=#fefefe

" Cursor
hi Cursor                  gui=NONE guifg=#fefefe guibg=#000000
hi iCursor                 gui=NONE guifg=#fefefe guibg=#000000
hi lCursor                 gui=NONE guifg=#fefefe guibg=#000000
hi CursorLine              gui=NONE guifg=NONE    guibg=#dddddd
hi CursorColumn            gui=NONE guifg=NONE    guibg=#555555

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=#ffffff guibg=#1111ff

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#fefefe
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#fefefe
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#fefefe
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#fefefe

" Diff
hi DiffAdd                 gui=NONE guifg=#11ee11 guibg=#fefefe
hi DiffChange              gui=NONE guifg=#1111ee guibg=#fefefe
hi DiffDelete              gui=NONE guifg=#ee1111 guibg=#fefefe
hi DiffText  		       gui=NONE guifg=#333333 guibg=#fefefe

" Misc
hi VertSplit               gui=NONE guifg=#777777 guibg=#777777
hi EndOfBuffer 		       gui=NONE guifg=#6666ff guibg=#fefefe
hi Directory 		       gui=NONE guifg=#777777 guibg=#fefefe
hi Error                   gui=NONE guifg=#333333 guibg=#fefefe
hi NonText  		       gui=NONE guifg=#333333 guibg=#fefefe
hi Tag                     gui=NONE guifg=#333333 guibg=#fefefe
hi Delimiter               gui=NONE guifg=#333333 guibg=#fefefe
hi MatchParen              gui=NONE guifg=#333333 guibg=#707070
hi ColorColumn             gui=NONE guifg=#333333 guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#333333 guibg=#fefefe
hi FoldColumn              gui=NONE guifg=#333333 guibg=#777777
hi SpecialKey 		       gui=NONE guifg=#333333 guibg=#fefefe
hi ToolbarLine             gui=NONE guifg=#333333 guibg=#fefefe
hi ToolbarButton           gui=NONE guifg=#333333 guibg=#fefefe
hi Question                gui=NONE guifg=#333333 guibg=#fefefe
hi Title                   gui=NONE guifg=#333333 guibg=#fefefe
hi SignColumn 		       gui=NONE guifg=#333333 guibg=#fefefe
hi Conceal   		       gui=NONE guifg=#333333 guibg=#fefefe
hi SpellBad 		       gui=NONE guifg=#333333 guibg=#fefefe
hi SpellCap   		       gui=NONE guifg=#333333 guibg=#fefefe
hi SpellRare 		       gui=NONE guifg=#333333 guibg=#fefefe
hi SpellLocal 		       gui=NONE guifg=#333333 guibg=#fefefe
hi QuickFixLine            gui=NONE guifg=#333333 guibg=#fefefe
hi Underlined              gui=NONE guifg=#333333 guibg=#fefefe
hi Ignore                  gui=NONE guifg=#333333 guibg=#fefefe
hi Debug                   gui=NONE guifg=#333333 guibg=#fefefe
hi multiple_cursors_curso  gui=NONE guifg=#333333 guibg=#fefefe
hi multiple_cursors_visual gui=NONE guifg=#333333 guibg=#fefefe
hi markdownH1              gui=NONE guifg=#333333 guibg=#fefefe
hi markdownH2              gui=NONE guifg=#333333 guibg=#fefefe
hi markdownH3              gui=NONE guifg=#333333 guibg=#fefefe
hi markdownLinkText        gui=NONE guifg=#333333 guibg=#fefefe


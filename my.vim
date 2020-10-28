" setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my"

" Normal (fg/bg)
hi Normal                  gui=NONE guifg=#cacaca guibg=#000000

" Visual/Selection
hi Visual				   gui=NONE guifg=NONE    guibg=#444444
hi VisualNOS               gui=NONE guifg=NONE    guibg=#444444

" Comments
hi Comment                 gui=NONE guifg=#aa1111 guibg=#000000
hi SpecialComment          gui=NONE guifg=#aa1111 guibg=#000000
hi Todo                    gui=NONE guifg=#aa1111 guibg=#000000
hi Note                    gui=NONE guifg=#aa1111 guibg=#000000
hi javaDocTags             gui=NONE guifg=#aa1111 guibg=#000000
hi javaDocParam            gui=NONE guifg=#aa1111 guibg=#000000
hi javaDocSeeTagParam      gui=NONE guifg=#aa1111 guibg=#000000
hi javaCommentTitle        gui=NONE guifg=#aa1111 guibg=#000000

" Keywords I
hi Keyword                 gui=NONE guifg=#cacaca guibg=#000000
hi Statement               gui=NONE guifg=#cacaca guibg=#000000
hi Conditional             gui=NONE guifg=#cacaca guibg=#000000
hi Repeat                  gui=NONE guifg=#cacaca guibg=#000000
hi Exception               gui=NONE guifg=#cacaca guibg=#000000
hi Operator                gui=NONE guifg=#cacaca guibg=#000000
hi Include                 gui=NONE guifg=#cacaca guibg=#000000

" Keywords II
hi Define                  gui=NONE guifg=#cacaca guibg=#000000
hi Label                   gui=NONE guifg=#cacaca guibg=#000000
hi Identifier              gui=NONE guifg=#cacaca guibg=#000000
hi Special                 gui=NONE guifg=#cacaca guibg=#000000
hi PreProc                 gui=NONE guifg=#cacaca guibg=#000000
hi Function                gui=NONE guifg=#cacaca guibg=#000000
hi Macro                   gui=NONE guifg=#cacaca guibg=#000000
hi PreCondit               gui=NONE guifg=#cacaca guibg=#000000
hi StorageClass            gui=NONE guifg=#cacaca guibg=#000000
hi Structure               gui=NONE guifg=#cacaca guibg=#000000
hi Typedef                 gui=NONE guifg=#cacaca guibg=#000000

" Literals/Types
hi Number                  gui=NONE guifg=#cacaca guibg=#000000
hi String                  gui=NONE guifg=#cacaca guibg=#000000
hi Character               gui=NONE guifg=#cacaca guibg=#000000
hi SpecialChar             gui=NONE guifg=#cacaca guibg=#000000
hi Type                    gui=NONE guifg=#cacaca guibg=#000000
hi Constant                gui=NONE guifg=#cacaca guibg=#000000
hi Boolean                 gui=NONE guifg=#cacaca guibg=#000000

" Messages
hi WarningMsg              gui=NONE guifg=#cacaca guibg=#000000
hi ErrorMsg 		       gui=NONE guifg=#ff0000 guibg=#000000
hi MoreMsg 		           gui=NONE guifg=#cacaca guibg=#000000
hi ModeMsg                 gui=NONE guifg=#cacaca guibg=#000000

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
hi WildMenu                gui=bold guifg=#444444 guibg=#cacaca
hi Pmenu      		       gui=NONE guifg=#cacaca guibg=#555555
hi PmenuSel   		       gui=NONE guifg=#222222 guibg=#cacaca
hi PmenuSbar 		       gui=NONE guifg=#cacaca guibg=#000000
hi PmenuThumb 		       gui=NONE guifg=#cacaca guibg=#000000

" Cursor
hi Cursor                  gui=NONE guifg=#000000 guibg=lightmagenta
hi iCursor                 gui=NONE guifg=#000000 guibg=lightmagenta
hi lCursor                 gui=NONE guifg=#000000 guibg=lightmagenta
hi CursorLine              gui=NONE guifg=NONE    guibg=#555555
hi CursorColumn            gui=NONE guifg=NONE    guibg=#555555

" Searching
hi Search 		           gui=NONE guifg=#ffffff guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=#000000 guibg=#ffff00

" Line number
hi LineNr 	               gui=NONE guifg=#707070 guibg=#000000
hi LineNrAbove             gui=NONE guifg=#707070 guibg=#000000
hi LineNrBelow             gui=NONE guifg=#707070 guibg=#000000
hi CursorLineNr            gui=NONE guifg=#707070 guibg=#000000

" Diff
hi DiffAdd                 gui=NONE guifg=#cacaca guibg=#000000
hi DiffChange              gui=NONE guifg=#cacaca guibg=#000000
hi DiffDelete              gui=NONE guifg=#cacaca guibg=#000000
hi DiffText  		       gui=NONE guifg=#cacaca guibg=#000000

" Misc
hi VertSplit               gui=NONE guifg=#666666 guibg=#000000
hi EndOfBuffer 		       gui=NONE guifg=#6666ff guibg=#000000
hi Directory 		       gui=NONE guifg=#a1a1a1 guibg=#000000
hi Error                   gui=NONE guifg=#cacaca guibg=#000000
hi NonText  		       gui=NONE guifg=#cacaca guibg=#000000
hi Tag                     gui=NONE guifg=#cacaca guibg=#000000
hi Delimiter               gui=NONE guifg=#cacaca guibg=#000000
hi MatchParen              gui=NONE guifg=#cacaca guibg=#707070
hi ColorColumn             gui=NONE guifg=#cacaca guibg=#ff0000

" Other stuff
hi Folded                  gui=NONE guifg=#cacaca guibg=#000000
hi FoldColumn              gui=NONE guifg=#cacaca guibg=#000000
hi SpecialKey 		       gui=NONE guifg=#cacaca guibg=#000000
hi ToolbarLine             gui=NONE guifg=#cacaca guibg=#000000
hi ToolbarButton           gui=NONE guifg=#cacaca guibg=#000000
hi Question                gui=NONE guifg=#cacaca guibg=#000000
hi Title                   gui=NONE guifg=#cacaca guibg=#000000
hi SignColumn 		       gui=NONE guifg=#cacaca guibg=#000000
hi Conceal   		       gui=NONE guifg=#cacaca guibg=#000000
hi SpellBad 		       gui=NONE guifg=#cacaca guibg=#000000
hi SpellCap   		       gui=NONE guifg=#cacaca guibg=#000000
hi SpellRare 		       gui=NONE guifg=#cacaca guibg=#000000
hi SpellLocal 		       gui=NONE guifg=#cacaca guibg=#000000
hi QuickFixLine            gui=NONE guifg=#cacaca guibg=#000000
hi Underlined              gui=NONE guifg=#cacaca guibg=#000000
hi Ignore                  gui=NONE guifg=#cacaca guibg=#000000
hi Debug                   gui=NONE guifg=#cacaca guibg=#000000
hi multiple_cursors_curso  gui=NONE guifg=#cacaca guibg=#000000
hi multiple_cursors_visual gui=NONE guifg=#cacaca guibg=#000000
hi markdownH1              gui=NONE guifg=#cacaca guibg=#000000
hi markdownH2              gui=NONE guifg=#cacaca guibg=#000000
hi markdownH3              gui=NONE guifg=#cacaca guibg=#000000
hi markdownLinkText        gui=NONE guifg=#cacaca guibg=#000000

" -------------------------------------------------------------

" Normal (fg/bg)
hi Normal                  cterm=NONE ctermfg=gray ctermbg=black

" Visual/Selection
hi Visual				   cterm=NONE ctermfg=NONE    ctermbg=lightgray
hi VisualNOS               cterm=NONE ctermfg=NONE    ctermbg=lightgray

" Comments
hi Comment                 cterm=NONE ctermfg=darkred ctermbg=black
hi SpecialComment          cterm=NONE ctermfg=darkred ctermbg=black
hi Todo                    cterm=NONE ctermfg=darkred ctermbg=black
hi Note                    cterm=NONE ctermfg=darkred ctermbg=black
hi javaDocTags             cterm=NONE ctermfg=darkred ctermbg=black
hi javaDocParam            cterm=NONE ctermfg=darkred ctermbg=black
hi javaDocSeeTagParam      cterm=NONE ctermfg=darkred ctermbg=black
hi javaCommentTitle        cterm=NONE ctermfg=darkred ctermbg=black

" Keywords I
hi Keyword                 cterm=NONE ctermfg=gray ctermbg=black
hi Statement               cterm=NONE ctermfg=gray ctermbg=black
hi Conditional             cterm=NONE ctermfg=gray ctermbg=black
hi Repeat                  cterm=NONE ctermfg=gray ctermbg=black
hi Exception               cterm=NONE ctermfg=gray ctermbg=black
hi Operator                cterm=NONE ctermfg=gray ctermbg=black
hi Include                 cterm=NONE ctermfg=gray ctermbg=black

" Keywords II
hi Define                  cterm=NONE ctermfg=gray ctermbg=black
hi Label                   cterm=NONE ctermfg=gray ctermbg=black
hi Identifier              cterm=NONE ctermfg=gray ctermbg=black
hi Special                 cterm=NONE ctermfg=gray ctermbg=black
hi PreProc                 cterm=NONE ctermfg=gray ctermbg=black
hi Function                cterm=NONE ctermfg=gray ctermbg=black
hi Macro                   cterm=NONE ctermfg=gray ctermbg=black
hi PreCondit               cterm=NONE ctermfg=gray ctermbg=black
hi StorageClass            cterm=NONE ctermfg=gray ctermbg=black
hi Structure               cterm=NONE ctermfg=gray ctermbg=black
hi Typedef                 cterm=NONE ctermfg=gray ctermbg=black

" Literals/Types
hi Number                  cterm=NONE ctermfg=gray ctermbg=black
hi String                  cterm=NONE ctermfg=gray ctermbg=black
hi Character               cterm=NONE ctermfg=gray ctermbg=black
hi SpecialChar             cterm=NONE ctermfg=gray ctermbg=black
hi Type                    cterm=NONE ctermfg=gray ctermbg=black
hi Constant                cterm=NONE ctermfg=gray ctermbg=black
hi Boolean                 cterm=NONE ctermfg=gray ctermbg=black

" Messages
hi WarningMsg              cterm=NONE ctermfg=gray ctermbg=black
hi ErrorMsg 		       cterm=NONE ctermfg=red ctermbg=black
hi MoreMsg 		           cterm=NONE ctermfg=gray ctermbg=black
hi ModeMsg                 cterm=NONE ctermfg=gray ctermbg=black

" Tabs
hi TabLine       		   cterm=NONE ctermfg=lightgray ctermbg=darkgray
hi TabLineSel   		   cterm=NONE ctermfg=white ctermbg=darkgray
hi TabLineFill  		   cterm=NONE ctermfg=lightgray ctermbg=darkgray

" Statusline
hi StatusLine              cterm=NONE ctermfg=gray ctermbg=gray
hi StatusLineNC            cterm=NONE ctermfg=gray ctermbg=lightgray
hi StatusLineTerm          cterm=NONE ctermfg=gray ctermbg=gray
hi StatusLineTermNC        cterm=NONE ctermfg=gray ctermbg=lightgray

" Autocomplete
hi WildMenu                cterm=bold ctermfg=darkgray ctermbg=gray
hi Pmenu      		       cterm=NONE ctermfg=gray ctermbg=darkgray
hi PmenuSel   		       cterm=NONE ctermfg=darkgray ctermbg=gray
hi PmenuSbar 		       cterm=NONE ctermfg=gray ctermbg=black
hi PmenuThumb 		       cterm=NONE ctermfg=gray ctermbg=black

" Cursor
hi Cursor                  cterm=NONE ctermfg=black ctermbg=gray
hi iCursor                 cterm=NONE ctermfg=black ctermbg=gray
hi lCursor                 cterm=NONE ctermfg=black ctermbg=gray
hi CursorLine              cterm=NONE ctermfg=NONE    ctermbg=darkgray
hi CursorColumn            cterm=NONE ctermfg=NONE    ctermbg=darkgray

" Searching
hi Search 		           cterm=NONE ctermfg=white ctermbg=blue
hi IncSearch 		       cterm=NONE ctermfg=black ctermbg=yellow

" Line number
hi LineNr 	               cterm=NONE ctermfg=gray ctermbg=black
hi LineNrAbove             cterm=NONE ctermfg=gray ctermbg=black
hi LineNrBelow             cterm=NONE ctermfg=gray ctermbg=black
hi CursorLineNr            cterm=NONE ctermfg=gray ctermbg=black

" Diff
hi DiffAdd                 cterm=NONE ctermfg=gray ctermbg=black
hi DiffChange              cterm=NONE ctermfg=gray ctermbg=black
hi DiffDelete              cterm=NONE ctermfg=gray ctermbg=black
hi DiffText  		       cterm=NONE ctermfg=gray ctermbg=black

" Misc
hi VertSplit               cterm=NONE ctermfg=gray ctermbg=black
hi EndOfBuffer 		       cterm=NONE ctermfg=gray ctermbg=black
hi Directory 		       cterm=NONE ctermfg=gray ctermbg=black
hi Error                   cterm=NONE ctermfg=gray ctermbg=black
hi NonText  		       cterm=NONE ctermfg=gray ctermbg=black
hi Tag                     cterm=NONE ctermfg=gray ctermbg=black
hi Delimiter               cterm=NONE ctermfg=gray ctermbg=black
hi MatchParen              cterm=NONE ctermfg=gray ctermbg=darkgray
hi ColorColumn             cterm=NONE ctermfg=gray ctermbg=gray

" Other stuff
hi Folded                  cterm=NONE ctermfg=gray ctermbg=black
hi FoldColumn              cterm=NONE ctermfg=gray ctermbg=black
hi SpecialKey 		       cterm=NONE ctermfg=gray ctermbg=black
hi ToolbarLine             cterm=NONE ctermfg=gray ctermbg=black
hi ToolbarButton           cterm=NONE ctermfg=gray ctermbg=black
hi Question                cterm=NONE ctermfg=gray ctermbg=black
hi Title                   cterm=NONE ctermfg=gray ctermbg=black
hi SignColumn 		       cterm=NONE ctermfg=gray ctermbg=black
hi Conceal   		       cterm=NONE ctermfg=gray ctermbg=black
hi SpellBad 		       cterm=NONE ctermfg=gray ctermbg=black
hi SpellCap   		       cterm=NONE ctermfg=gray ctermbg=black
hi SpellRare 		       cterm=NONE ctermfg=gray ctermbg=black
hi SpellLocal 		       cterm=NONE ctermfg=gray ctermbg=black
hi QuickFixLine            cterm=NONE ctermfg=gray ctermbg=black
hi Underlined              cterm=NONE ctermfg=gray ctermbg=black
hi Ignore                  cterm=NONE ctermfg=gray ctermbg=black
hi Debug                   cterm=NONE ctermfg=gray ctermbg=black
hi multiple_cursors_curso  cterm=NONE ctermfg=gray ctermbg=black
hi multiple_cursors_visual cterm=NONE ctermfg=gray ctermbg=black
hi markdownH1              cterm=NONE ctermfg=gray ctermbg=black
hi markdownH2              cterm=NONE ctermfg=gray ctermbg=black
hi markdownH3              cterm=NONE ctermfg=gray ctermbg=black
hi markdownLinkText        cterm=NONE ctermfg=gray ctermbg=black

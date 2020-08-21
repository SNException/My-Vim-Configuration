set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dark_plain"

" f6f6f6
hi Normal                  gui=NONE guifg=#c1c1c1 guibg=#303030

hi Visual				   gui=NONE guifg=#303030 guibg=#c1c1c1
hi VisualNOS               gui=NONE guifg=#303030 guibg=#c1c1c1

hi Comment                 gui=NONE guifg=#33aa33 guibg=#303030
hi SpecialComment          gui=NONE guifg=#33aa33 guibg=#303030
hi Todo                    gui=NONE guifg=#33aa33 guibg=#303030
hi Note                    gui=NONE guifg=#33aa33 guibg=#303030
hi javaDocTags             gui=NONE guifg=#33aa33 guibg=#303030
hi javaDocParam            gui=NONE guifg=#33aa33 guibg=#303030
hi javaDocSeeTagParam      gui=NONE guifg=#33aa33 guibg=#303030
hi javaCommentTitle        gui=NONE guifg=#33aa33 guibg=#303030
hi Special                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Keyword                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Identifier              gui=NONE guifg=#c1c1c1 guibg=#303030
hi PreProc                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Function                gui=NONE guifg=#c1c1c1 guibg=#303030
hi Label                   gui=NONE guifg=#c1c1c1 guibg=#303030
hi Statement               gui=NONE guifg=#c1c1c1 guibg=#303030
hi Type                    gui=NONE guifg=#c1c1c1 guibg=#303030
hi Include                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Define                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi Macro                   gui=NONE guifg=#c1c1c1 guibg=#303030
hi PreCondit               gui=NONE guifg=#c1c1c1 guibg=#303030
hi StorageClass            gui=NONE guifg=#c1c1c1 guibg=#303030
hi Structure               gui=NONE guifg=#c1c1c1 guibg=#303030
hi Typedef                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Operator                gui=NONE guifg=#c1c1c1 guibg=#303030
hi Conditional             gui=NONE guifg=#c1c1c1 guibg=#303030

hi Number                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi Float                   gui=NONE guifg=#c1c1c1 guibg=#303030

hi Constant                gui=NONE guifg=#c1c1c1 guibg=#303030
hi Boolean                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi Repeat                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi Exception               gui=NONE guifg=#c1c1c1 guibg=#303030
hi String                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi Character               gui=NONE guifg=#c1c1c1 guibg=#303030
hi SpecialChar             gui=NONE guifg=#c1c1c1 guibg=#303030
hi String                  gui=NONE guifg=#c1c1c1 guibg=#303030

" hi Character               gui=NONE guifg=#525252 guibg=#303030
" hi SpecialChar             gui=NONE guifg=#525252 guibg=#303030
" hi String                  gui=NONE guifg=#525252 guibg=#303030

hi Error                   gui=NONE guifg=#c1c1c1 guibg=#303030

hi NonText  		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi Tag                     gui=NONE guifg=#c1c1c1 guibg=#303030
hi Delimiter               gui=NONE guifg=#c1c1c1 guibg=#303030

hi WarningMsg              gui=NONE guifg=#c1c1c1 guibg=#303030
hi ErrorMsg 		       gui=NONE guifg=red   guibg=#303030
hi MoreMsg 		           gui=NONE guifg=#c1c1c1 guibg=#303030
hi ModeMsg                 gui=NONE guifg=#c1c1c1 guibg=#303030

hi TabLine       		   gui=NONE guifg=#c1c1c1 guibg=gray
hi TabLineSel   		   gui=NONE guifg=#c1c1c1 guibg=gray
hi TabLineFill  		   gui=NONE guifg=#c1c1c1 guibg=gray

" hi VertSplit               gui=NONE guibg=#c1c1c1 guifg=#c1c1c1
hi VertSplit               gui=NONE guibg=#303030 guifg=#999999

hi WildMenu                gui=bold guifg=darkgray guibg=#c1c1c1

hi StatusLine              gui=NONE guifg=#c1c1c1    guibg=#555555
hi StatusLineNC            gui=NONE guifg=#c1c1c1    guibg=#444444
hi StatusLineTerm          gui=NONE guifg=#c1c1c1    guibg=#555555
hi StatusLineTermNC        gui=NONE guifg=#c1c1c1    guibg=#444444

hi Pmenu      		       gui=NONE guifg=#303030   guibg=#222222
hi PmenuSel   		       gui=NONE guifg=#303030   guibg=#c1c1c1
hi PmenuSbar 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi PmenuThumb 		       gui=NONE guifg=#c1c1c1 guibg=#303030

hi Cursor                  gui=NONE guifg=#303030 guibg=#c1c1c1
hi iCursor                 gui=NONE guifg=#303030 guibg=#c1c1c1
hi lCursor                 gui=NONE guifg=#303030 guibg=#c1c1c1
hi CursorLine              gui=NONE guifg=#c1c1c1 guibg=#555555
hi CursorColumn            gui=NONE guifg=#c1c1c1 guibg=lightgray

hi EndOfBuffer 		       gui=NONE guifg=#666666  guibg=#303030

hi Search 		           gui=NONE guifg=white guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=white guibg=#1111ff

hi DiffAdd                 gui=NONE guifg=#c1c1c1 guibg=#303030
hi DiffChange              gui=NONE guifg=#c1c1c1 guibg=#303030
hi DiffDelete              gui=NONE guifg=#c1c1c1 guibg=#303030
hi DiffText  		       gui=NONE guifg=#c1c1c1 guibg=#303030

hi LineNr 	               gui=NONE guifg=#c1c1c1 guibg=#aaaaaa
hi LineNrAbove             gui=NONE guifg=#c1c1c1 guibg=#aaaaaa
hi LineNrBelow             gui=NONE guifg=#c1c1c1 guibg=#aaaaaa
hi CursorLineNr            gui=NONE guifg=#c1c1c1 guibg=#aaaaaa

hi MatchParen              gui=NONE guifg=black guibg=#999999

hi Folded                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi FoldColumn              gui=NONE guifg=#c1c1c1 guibg=#303030

hi SpecialKey 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi ToolbarLine             gui=NONE guifg=#c1c1c1 guibg=#303030
hi ToolbarButton           gui=NONE guifg=#c1c1c1 guibg=#303030
hi Directory 		       gui=NONE guifg=#a1a1a1 guibg=#303030
hi Question                gui=NONE guifg=#c1c1c1 guibg=#303030
hi Title                   gui=NONE guifg=#c1c1c1 guibg=#303030
hi SignColumn 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi Conceal   		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi SpellBad 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi SpellCap   		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi SpellRare 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi SpellLocal 		       gui=NONE guifg=#c1c1c1 guibg=#303030
hi ColorColumn             gui=NONE guifg=#c1c1c1 guibg=red
hi QuickFixLine            gui=NONE guifg=#c1c1c1 guibg=#303030
hi Underlined              gui=NONE guifg=#c1c1c1 guibg=#303030
hi Ignore                  gui=NONE guifg=#c1c1c1 guibg=#303030
hi Debug                   gui=NONE guifg=#c1c1c1 guibg=#303030
hi multiple_cursors_curso  gui=NONE guifg=#c1c1c1 guibg=#303030
hi multiple_cursors_visual gui=NONE guifg=#c1c1c1 guibg=#303030
hi markdownH1              gui=NONE guifg=#c1c1c1 guibg=#303030
hi markdownH2              gui=NONE guifg=#c1c1c1 guibg=#303030
hi markdownH3              gui=NONE guifg=#c1c1c1 guibg=#303030
hi markdownLinkText        gui=NONE guifg=#c1c1c1 guibg=#303030

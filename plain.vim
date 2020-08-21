set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "plain"

" f6f6f6
hi Normal                  gui=NONE guifg=black guibg=#dadada

hi Visual				   gui=NONE guifg=#dadada guibg=black
hi VisualNOS               gui=NONE guifg=#dadada guibg=black

hi Comment                 gui=NONE guifg=#006300 guibg=#dadada
hi SpecialComment          gui=NONE guifg=#006300 guibg=#dadada
hi Todo                    gui=NONE guifg=#006300 guibg=#dadada
hi Note                    gui=NONE guifg=#006300 guibg=#dadada
hi javaDocTags             gui=NONE guifg=#006300 guibg=#dadada
hi javaDocParam            gui=NONE guifg=#006300 guibg=#dadada
hi javaDocSeeTagParam      gui=NONE guifg=#006300 guibg=#dadada
hi javaCommentTitle        gui=NONE guifg=#006300 guibg=#dadada
hi Special                 gui=NONE guifg=black guibg=#dadada
hi Keyword                 gui=NONE guifg=black guibg=#dadada
hi Identifier              gui=NONE guifg=black guibg=#dadada
hi PreProc                 gui=NONE guifg=black guibg=#dadada
hi Function                gui=NONE guifg=black guibg=#dadada
hi Label                   gui=NONE guifg=black guibg=#dadada
hi Statement               gui=NONE guifg=black guibg=#dadada
hi Type                    gui=NONE guifg=black guibg=#dadada
hi Include                 gui=NONE guifg=black guibg=#dadada
hi Define                  gui=NONE guifg=black guibg=#dadada
hi Macro                   gui=NONE guifg=black guibg=#dadada
hi PreCondit               gui=NONE guifg=black guibg=#dadada
hi StorageClass            gui=NONE guifg=black guibg=#dadada
hi Structure               gui=NONE guifg=black guibg=#dadada
hi Typedef                 gui=NONE guifg=black guibg=#dadada
hi Operator                gui=NONE guifg=black guibg=#dadada
hi Conditional             gui=NONE guifg=black guibg=#dadada

hi Number                  gui=NONE guifg=black guibg=#dadada
hi Float                   gui=NONE guifg=black guibg=#dadada

hi Constant                gui=NONE guifg=black guibg=#dadada
hi Boolean                 gui=NONE guifg=black guibg=#dadada
hi Repeat                  gui=NONE guifg=black guibg=#dadada
hi Exception               gui=NONE guifg=black guibg=#dadada
hi String                  gui=NONE guifg=black guibg=#dadada
hi Character               gui=NONE guifg=black guibg=#dadada
hi SpecialChar             gui=NONE guifg=black guibg=#dadada
hi String                  gui=NONE guifg=black guibg=#dadada

" hi Character               gui=NONE guifg=#525252 guibg=#dadada
" hi SpecialChar             gui=NONE guifg=#525252 guibg=#dadada
" hi String                  gui=NONE guifg=#525252 guibg=#dadada

hi Error                   gui=NONE guifg=black guibg=#dadada

hi NonText  		       gui=NONE guifg=black guibg=#dadada
hi Tag                     gui=NONE guifg=black guibg=#dadada
hi Delimiter               gui=NONE guifg=black guibg=#dadada

hi WarningMsg              gui=NONE guifg=black guibg=#dadada
hi ErrorMsg 		       gui=NONE guifg=red   guibg=#dadada
hi MoreMsg 		           gui=NONE guifg=black guibg=#dadada
hi ModeMsg                 gui=NONE guifg=black guibg=#dadada

hi TabLine       		   gui=NONE guifg=black guibg=gray
hi TabLineSel   		   gui=NONE guifg=black guibg=gray
hi TabLineFill  		   gui=NONE guifg=black guibg=gray

" hi VertSplit               gui=NONE guibg=#bbbbbb guifg=#bbbbbb
hi VertSplit               gui=NONE guibg=#dadada guifg=#999999

hi WildMenu                gui=bold guifg=darkgray guibg=black

hi StatusLine              gui=NONE guifg=#dadada    guibg=#333333
hi StatusLineNC            gui=NONE guifg=#dadada    guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#dadada    guibg=#333333
hi StatusLineTermNC        gui=NONE guifg=#dadada    guibg=#555555

hi Pmenu      		       gui=NONE guifg=#dadada   guibg=#222222
hi PmenuSel   		       gui=NONE guifg=#dadada   guibg=black
hi PmenuSbar 		       gui=NONE guifg=black guibg=#dadada
hi PmenuThumb 		       gui=NONE guifg=black guibg=#dadada

hi Cursor                  gui=NONE guifg=#dadada guibg=black
hi iCursor                 gui=NONE guifg=#dadada guibg=black
hi lCursor                 gui=NONE guifg=#dadada guibg=black
hi CursorLine              gui=NONE guifg=black guibg=#aaaaaa
hi CursorColumn            gui=NONE guifg=black guibg=lightgray

hi EndOfBuffer 		       gui=NONE guifg=blue guibg=#dadada

hi Search 		           gui=NONE guifg=white guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=white guibg=#1111ff

hi DiffAdd                 gui=NONE guifg=black guibg=#dadada
hi DiffChange              gui=NONE guifg=black guibg=#dadada
hi DiffDelete              gui=NONE guifg=black guibg=#dadada
hi DiffText  		       gui=NONE guifg=black guibg=#dadada

hi LineNr 	               gui=NONE guifg=black guibg=#aaaaaa
hi LineNrAbove             gui=NONE guifg=black guibg=#aaaaaa
hi LineNrBelow             gui=NONE guifg=black guibg=#aaaaaa
hi CursorLineNr            gui=NONE guifg=black guibg=#aaaaaa

hi MatchParen              gui=NONE guifg=black guibg=darkgray

hi Folded                  gui=NONE guifg=black guibg=#dadada
hi FoldColumn              gui=NONE guifg=black guibg=#dadada

hi SpecialKey 		       gui=NONE guifg=black guibg=#dadada
hi ToolbarLine             gui=NONE guifg=black guibg=#dadada
hi ToolbarButton           gui=NONE guifg=black guibg=#dadada
hi Directory 		       gui=NONE guifg=#444444 guibg=#dadada
hi Question                gui=NONE guifg=black guibg=#dadada
hi Title                   gui=NONE guifg=black guibg=#dadada
hi SignColumn 		       gui=NONE guifg=black guibg=#dadada
hi Conceal   		       gui=NONE guifg=black guibg=#dadada
hi SpellBad 		       gui=NONE guifg=black guibg=#dadada
hi SpellCap   		       gui=NONE guifg=black guibg=#dadada
hi SpellRare 		       gui=NONE guifg=black guibg=#dadada
hi SpellLocal 		       gui=NONE guifg=black guibg=#dadada
hi ColorColumn             gui=NONE guifg=black guibg=red
hi QuickFixLine            gui=NONE guifg=black guibg=#dadada
hi Underlined              gui=NONE guifg=black guibg=#dadada
hi Ignore                  gui=NONE guifg=black guibg=#dadada
hi Debug                   gui=NONE guifg=black guibg=#dadada
hi multiple_cursors_curso  gui=NONE guifg=black guibg=#dadada
hi multiple_cursors_visual gui=NONE guifg=black guibg=#dadada
hi markdownH1              gui=NONE guifg=black guibg=#dadada
hi markdownH2              gui=NONE guifg=black guibg=#dadada
hi markdownH3              gui=NONE guifg=black guibg=#dadada
hi markdownLinkText        gui=NONE guifg=black guibg=#dadada

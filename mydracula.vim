set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mydracula"

" f6f6f6
hi Normal                  gui=NONE guifg=#F8F8F2 guibg=#282A36

hi Visual				   gui=NONE guifg=white guibg=blue
hi VisualNOS               gui=NONE guifg=white guibg=blue

hi Comment                 gui=NONE guifg=#6272A4 guibg=#282A36
hi SpecialComment          gui=NONE guifg=#6272A4 guibg=#282A36
hi Todo                    gui=NONE guifg=#6272A4 guibg=#282A36
hi Note                    gui=NONE guifg=#6272A4 guibg=#282A36
hi javaDocTags             gui=NONE guifg=#6272A4 guibg=#282A36
hi javaDocParam            gui=NONE guifg=#6272A4 guibg=#282A36
hi javaDocSeeTagParam      gui=NONE guifg=#6272A4 guibg=#282A36
hi javaCommentTitle        gui=NONE guifg=#6272A4 guibg=#282A36
hi Special                 gui=NONE guifg=#FF79C6 guibg=#282A36
hi Keyword                 gui=NONE guifg=#FF79C6 guibg=#282A36
hi Identifier              gui=NONE guifg=#FF79C6 guibg=#282A36
hi PreProc                 gui=NONE guifg=#FF79C6 guibg=#282A36
hi Function                gui=NONE guifg=#FF79C6 guibg=#282A36
hi Label                   gui=NONE guifg=#FF79C6 guibg=#282A36
hi Statement               gui=NONE guifg=#FF79C6 guibg=#282A36
hi Type                    gui=NONE guifg=#8BE9FD guibg=#282A36
hi Include                 gui=NONE guifg=#FF79C6 guibg=#282A36
hi Define                  gui=NONE guifg=#FF79C6 guibg=#282A36
hi Macro                   gui=NONE guifg=#FF79C6 guibg=#282A36
hi PreCondit               gui=NONE guifg=#FF79C6 guibg=#282A36
hi StorageClass            gui=NONE guifg=#FF79C6 guibg=#282A36
hi Structure               gui=NONE guifg=#FF79C6 guibg=#282A36
hi Typedef                 gui=NONE guifg=#FF79C6 guibg=#282A36
hi Operator                gui=NONE guifg=#FF79C6 guibg=#282A36
hi Conditional             gui=NONE guifg=#FF79C6 guibg=#282A36

hi Number                  gui=NONE guifg=#BD93F9 guibg=#282A36
hi Float                   gui=NONE guifg=#BD93F9 guibg=#282A36

hi Constant                gui=NONE guifg=#BD93F9 guibg=#282A36
hi Boolean                 gui=NONE guifg=#BD93F9 guibg=#282A36
hi Repeat                  gui=NONE guifg=#FF79C6 guibg=#282A36
hi Exception               gui=NONE guifg=#FF79C6 guibg=#282A36
hi String                  gui=NONE guifg=#F1FA8C guibg=#282A36
hi Character               gui=NONE guifg=#F1FA8C guibg=#282A36
hi SpecialChar             gui=NONE guifg=#F1FA8C guibg=#282A36
hi String                  gui=NONE guifg=#F1FA8C guibg=#282A36

hi Error                   gui=NONE guifg=#F8F8F2 guibg=#282A36

hi NonText  		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Tag                     gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Delimiter               gui=NONE guifg=#F8F8F2 guibg=#282A36

hi WarningMsg              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi ErrorMsg 		       gui=NONE guifg=red   guibg=#282A36
hi MoreMsg 		           gui=NONE guifg=#F8F8F2 guibg=#282A36
hi ModeMsg                 gui=NONE guifg=#F8F8F2 guibg=#282A36

hi TabLine       		   gui=NONE guifg=#F8F8F2 guibg=gray
hi TabLineSel   		   gui=NONE guifg=#F8F8F2 guibg=gray
hi TabLineFill  		   gui=NONE guifg=#F8F8F2 guibg=gray

hi VertSplit               gui=NONE guibg=#282A36 guifg=#282A36

hi WildMenu                gui=bold guifg=darkgray guibg=#F8F8F2

hi StatusLine              gui=NONE guifg=#282A36    guibg=#333333
hi StatusLineNC            gui=NONE guifg=#282A36    guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#282A36    guibg=#333333
hi StatusLineTermNC        gui=NONE guifg=#282A36    guibg=#555555

hi Pmenu      		       gui=NONE guifg=#282A36   guibg=#999999
hi PmenuSel   		       gui=NONE guifg=#282A36   guibg=#F8F8F2
hi PmenuSbar 		       gui=NONE guifg=#F8F8F2   guibg=#282A36
hi PmenuThumb 		       gui=NONE guifg=#F8F8F2   guibg=#282A36

hi Cursor                  gui=NONE guifg=#282A36 guibg=#F8F8F2
hi iCursor                 gui=NONE guifg=#282A36 guibg=#F8F8F2
hi lCursor                 gui=NONE guifg=#282A36 guibg=#F8F8F2
hi CursorLine              gui=NONE guifg=#F8F8F2 guibg=#444444
hi CursorColumn            gui=NONE guifg=#F8F8F2 guibg=lightgray

hi EndOfBuffer 		       gui=NONE guifg=blue guibg=#282A36

hi Search 		           gui=NONE guifg=black guibg=#50FA7B
hi IncSearch 		       gui=NONE guifg=black guibg=#50FA7B

hi DiffAdd                 gui=NONE guifg=#F8F8F2 guibg=#282A36
hi DiffChange              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi DiffDelete              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi DiffText  		       gui=NONE guifg=#F8F8F2 guibg=#282A36

hi LineNr 	               gui=NONE guifg=#F8F8F2 guibg=#aaaaaa
hi LineNrAbove             gui=NONE guifg=#F8F8F2 guibg=#aaaaaa
hi LineNrBelow             gui=NONE guifg=#F8F8F2 guibg=#aaaaaa
hi CursorLineNr            gui=NONE guifg=#F8F8F2 guibg=#aaaaaa

hi MatchParen              gui=NONE guifg=#F8F8F2 guibg=darkgray

hi Folded                  gui=NONE guifg=#F8F8F2 guibg=#282A36
hi FoldColumn              gui=NONE guifg=#F8F8F2 guibg=#282A36

hi SpecialKey 		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi ToolbarLine             gui=NONE guifg=#F8F8F2 guibg=#282A36
hi ToolbarButton           gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Directory 		       gui=NONE guifg=#AAAAAA guibg=#282A36
hi Question                gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Title                   gui=NONE guifg=#F8F8F2 guibg=#282A36
hi SignColumn 		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Conceal   		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi SpellBad 		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi SpellCap   		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi SpellRare 		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi SpellLocal 		       gui=NONE guifg=#F8F8F2 guibg=#282A36
hi ColorColumn             gui=NONE guifg=#F8F8F2 guibg=red
hi QuickFixLine            gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Underlined              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Ignore                  gui=NONE guifg=#F8F8F2 guibg=#282A36
hi Debug                   gui=NONE guifg=#F8F8F2 guibg=#282A36
hi multiple_cursors_curso  gui=NONE guifg=#F8F8F2 guibg=#282A36
hi multiple_cursors_visual gui=NONE guifg=#F8F8F2 guibg=#282A36
hi markdownH1              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi markdownH2              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi markdownH3              gui=NONE guifg=#F8F8F2 guibg=#282A36
hi markdownLinkText        gui=NONE guifg=#F8F8F2 guibg=#282A36

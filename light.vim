set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "light"

hi Normal                  gui=NONE guifg=black guibg=#e5e5e5

hi Visual				   gui=NONE guifg=#e5e5e5 guibg=black
hi VisualNOS               gui=NONE guifg=#e5e5e5 guibg=black

hi Comment                 gui=NONE guifg=#008500 guibg=#e5e5e5
hi SpecialComment          gui=NONE guifg=#008500 guibg=#e5e5e5
hi Todo                    gui=NONE guifg=#008500 guibg=#e5e5e5
hi Note                    gui=NONE guifg=#008500 guibg=#e5e5e5
hi javaDocTags             gui=NONE guifg=#008500 guibg=#e5e5e5
hi javaDocParam            gui=NONE guifg=#008500 guibg=#e5e5e5
hi javaDocSeeTagParam      gui=NONE guifg=#008500 guibg=#e5e5e5
hi javaCommentTitle        gui=NONE guifg=#008500 guibg=#e5e5e5
hi Special                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Keyword                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Identifier              gui=NONE guifg=#0000bb guibg=#e5e5e5
hi PreProc                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Function                gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Label                   gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Statement               gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Type                    gui=NONE guifg=black guibg=#e5e5e5
" hi Type                    gui=NONE guifg=#5757ff guibg=#e5e5e5
hi Include                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Define                  gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Macro                   gui=NONE guifg=#0000bb guibg=#e5e5e5
hi PreCondit               gui=NONE guifg=#0000bb guibg=#e5e5e5
hi StorageClass            gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Structure               gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Typedef                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Operator                gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Conditional             gui=NONE guifg=#0000bb guibg=#e5e5e5

hi Number                  gui=NONE guifg=black guibg=#e5e5e5
hi Float                   gui=NONE guifg=black guibg=#e5e5e5

hi Constant                gui=NONE guifg=#5757ff guibg=#e5e5e5
hi Boolean                 gui=NONE guifg=#5757ff guibg=#e5e5e5
" hi Constant                gui=NONE guifg=#0000bb guibg=#e5e5e5
" hi Boolean                 gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Repeat                  gui=NONE guifg=#0000bb guibg=#e5e5e5
hi Exception               gui=NONE guifg=#0000bb guibg=#e5e5e5
hi String                  gui=NONE guifg=#aa1111 guibg=#e5e5e5
hi Error                   gui=NONE guifg=black guibg=#e5e5e5

hi NonText  		       gui=NONE guifg=black guibg=#e5e5e5
hi Character               gui=NONE guifg=#aa1111 guibg=#e5e5e5
hi SpecialChar             gui=NONE guifg=#aa1111 guibg=#e5e5e5
hi Tag                     gui=NONE guifg=black guibg=#e5e5e5
hi Delimiter               gui=NONE guifg=black guibg=#e5e5e5

hi WarningMsg              gui=NONE guifg=black guibg=#e5e5e5
hi ErrorMsg 		       gui=NONE guifg=red   guibg=#e5e5e5
hi MoreMsg 		           gui=NONE guifg=black guibg=#e5e5e5
hi ModeMsg                 gui=NONE guifg=black guibg=#e5e5e5

hi TabLine       		   gui=NONE guifg=black guibg=gray
hi TabLineSel   		   gui=NONE guifg=black guibg=gray
hi TabLineFill  		   gui=NONE guifg=black guibg=gray

hi VertSplit               gui=NONE guibg=#343434 guifg=#e5e5e5

hi WildMenu                gui=bold guifg=darkgray guibg=black

hi StatusLine              gui=NONE guifg=#e5e5e5    guibg=#333333
hi StatusLineNC            gui=NONE guifg=#e5e5e5    guibg=#797979
hi StatusLineTerm          gui=NONE guifg=#e5e5e5    guibg=#333333
hi StatusLineTermNC        gui=NONE guifg=#e5e5e5    guibg=#797979

hi Pmenu      		       gui=NONE guifg=#e5e5e5   guibg=#222222
hi PmenuSel   		       gui=NONE guifg=#e5e5e5   guibg=black
hi PmenuSbar 		       gui=NONE guifg=black guibg=#e5e5e5
hi PmenuThumb 		       gui=NONE guifg=black guibg=#e5e5e5

hi Cursor                  gui=NONE guifg=#e5e5e5 guibg=black
hi iCursor                 gui=NONE guifg=#e5e5e5 guibg=black
hi lCursor                 gui=NONE guifg=#e5e5e5 guibg=black
hi CursorLine              gui=NONE guifg=black guibg=#cfcfcf
hi CursorColumn            gui=NONE guifg=black guibg=#cfcfcf

hi EndOfBuffer 		       gui=NONE guifg=blue guibg=#e5e5e5

hi Search 		           gui=NONE guifg=white guibg=#9999ff
hi IncSearch 		       gui=NONE guifg=white guibg=#9999ff

hi DiffAdd                 gui=NONE guifg=black guibg=#e5e5e5
hi DiffChange              gui=NONE guifg=black guibg=#e5e5e5
hi DiffDelete              gui=NONE guifg=black guibg=#e5e5e5
hi DiffText  		       gui=NONE guifg=black guibg=#e5e5e5

hi LineNr 	               gui=NONE guifg=gray guibg=#111111
hi LineNrAbove             gui=NONE guifg=gray guibg=#111111
hi LineNrBelow             gui=NONE guifg=gray guibg=#111111
hi CursorLineNr            gui=NONE guifg=gray guibg=#111111

hi MatchParen              gui=NONE guifg=black guibg=gray

hi Folded                  gui=NONE guifg=black guibg=#e5e5e5
hi FoldColumn              gui=NONE guifg=black guibg=#e5e5e5

hi SpecialKey 		       gui=NONE guifg=black guibg=#e5e5e5
hi ToolbarLine             gui=NONE guifg=black guibg=#e5e5e5
hi ToolbarButton           gui=NONE guifg=black guibg=#e5e5e5
hi Directory 		       gui=NONE guifg=#444444 guibg=#e5e5e5
hi Question                gui=NONE guifg=black guibg=#e5e5e5
hi Title                   gui=NONE guifg=black guibg=#e5e5e5
hi SignColumn 		       gui=NONE guifg=black guibg=#e5e5e5
hi Conceal   		       gui=NONE guifg=black guibg=#e5e5e5
hi SpellBad 		       gui=NONE guifg=black guibg=#e5e5e5
hi SpellCap   		       gui=NONE guifg=black guibg=#e5e5e5
hi SpellRare 		       gui=NONE guifg=black guibg=#e5e5e5
hi SpellLocal 		       gui=NONE guifg=black guibg=#e5e5e5
hi ColorColumn             gui=NONE guifg=black guibg=red
hi QuickFixLine            gui=NONE guifg=black guibg=#e5e5e5
hi Underlined              gui=NONE guifg=black guibg=#e5e5e5
hi Ignore                  gui=NONE guifg=black guibg=#e5e5e5
hi Debug                   gui=NONE guifg=black guibg=#e5e5e5
hi multiple_cursors_curso  gui=NONE guifg=black guibg=#e5e5e5
hi multiple_cursors_visual gui=NONE guifg=black guibg=#e5e5e5
hi markdownH1              gui=NONE guifg=black guibg=#e5e5e5
hi markdownH2              gui=NONE guifg=black guibg=#e5e5e5
hi markdownH3              gui=NONE guifg=black guibg=#e5e5e5
hi markdownLinkText        gui=NONE guifg=black guibg=#e5e5e5

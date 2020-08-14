set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "plain"

hi Normal                  gui=NONE guifg=black guibg=#fdfdfd

hi Visual				   gui=NONE guifg=#fdfdfd guibg=black
hi VisualNOS               gui=NONE guifg=#fdfdfd guibg=black

hi Comment                 gui=NONE guifg=#099000 guibg=#fdfdfd
hi SpecialComment          gui=NONE guifg=#099000 guibg=#fdfdfd
hi Todo                    gui=NONE guifg=#009000 guibg=#fdfdfd
hi Note                    gui=NONE guifg=#009000 guibg=#fdfdfd
hi javaDocTags             gui=NONE guifg=#009000 guibg=#fdfdfd
hi javaDocParam            gui=NONE guifg=#009000 guibg=#fdfdfd
hi javaDocSeeTagParam      gui=NONE guifg=#009000 guibg=#fdfdfd
hi javaCommentTitle        gui=NONE guifg=#009000 guibg=#fdfdfd
hi Special                 gui=NONE guifg=black guibg=#fdfdfd
hi Keyword                 gui=NONE guifg=black guibg=#fdfdfd
hi Identifier              gui=NONE guifg=black guibg=#fdfdfd
hi PreProc                 gui=NONE guifg=black guibg=#fdfdfd
hi Function                gui=NONE guifg=black guibg=#fdfdfd
hi Label                   gui=NONE guifg=black guibg=#fdfdfd
hi Statement               gui=NONE guifg=black guibg=#fdfdfd
hi Type                    gui=NONE guifg=black guibg=#fdfdfd
hi Include                 gui=NONE guifg=black guibg=#fdfdfd
hi Define                  gui=NONE guifg=black guibg=#fdfdfd
hi Macro                   gui=NONE guifg=black guibg=#fdfdfd
hi PreCondit               gui=NONE guifg=black guibg=#fdfdfd
hi StorageClass            gui=NONE guifg=black guibg=#fdfdfd
hi Structure               gui=NONE guifg=black guibg=#fdfdfd
hi Typedef                 gui=NONE guifg=black guibg=#fdfdfd
hi Operator                gui=NONE guifg=black guibg=#fdfdfd
hi Conditional             gui=NONE guifg=black guibg=#fdfdfd

hi Number                  gui=NONE guifg=black guibg=#fdfdfd
hi Float                   gui=NONE guifg=black guibg=#fdfdfd

hi Constant                gui=NONE guifg=black guibg=#fdfdfd
hi Boolean                 gui=NONE guifg=black guibg=#fdfdfd
hi Repeat                  gui=NONE guifg=black guibg=#fdfdfd
hi Exception               gui=NONE guifg=black guibg=#fdfdfd
hi String                  gui=NONE guifg=black guibg=#fdfdfd
hi Error                   gui=NONE guifg=black guibg=#fdfdfd

hi NonText  		       gui=NONE guifg=black guibg=#fdfdfd
hi Character               gui=NONE guifg=black guibg=#fdfdfd
hi SpecialChar             gui=NONE guifg=black guibg=#fdfdfd
hi Tag                     gui=NONE guifg=black guibg=#fdfdfd
hi Delimiter               gui=NONE guifg=black guibg=#fdfdfd

hi WarningMsg              gui=NONE guifg=black guibg=#fdfdfd
hi ErrorMsg 		       gui=NONE guifg=red   guibg=#fdfdfd
hi MoreMsg 		           gui=NONE guifg=black guibg=#fdfdfd
hi ModeMsg                 gui=NONE guifg=black guibg=#fdfdfd

hi TabLine       		   gui=NONE guifg=black guibg=gray
hi TabLineSel   		   gui=NONE guifg=black guibg=gray
hi TabLineFill  		   gui=NONE guifg=black guibg=gray

hi VertSplit               gui=NONE guibg=#343434 guifg=#fdfdfd

hi WildMenu                gui=bold guifg=darkgray guibg=black

hi StatusLine              gui=NONE guifg=#fdfdfd    guibg=#333333
hi StatusLineNC            gui=NONE guifg=#fdfdfd    guibg=#555555
hi StatusLineTerm          gui=NONE guifg=#fdfdfd    guibg=#333333
hi StatusLineTermNC        gui=NONE guifg=#fdfdfd    guibg=#555555

hi Pmenu      		       gui=NONE guifg=#fdfdfd   guibg=#222222
hi PmenuSel   		       gui=NONE guifg=#fdfdfd   guibg=black
hi PmenuSbar 		       gui=NONE guifg=black guibg=#fdfdfd
hi PmenuThumb 		       gui=NONE guifg=black guibg=#fdfdfd

hi Cursor                  gui=NONE guifg=#fdfdfd guibg=black
hi iCursor                 gui=NONE guifg=#fdfdfd guibg=black
hi lCursor                 gui=NONE guifg=#fdfdfd guibg=black
hi CursorLine              gui=NONE guifg=black guibg=#aaaaaa
hi CursorColumn            gui=NONE guifg=black guibg=lightgray

hi EndOfBuffer 		       gui=NONE guifg=blue guibg=#fdfdfd

hi Search 		           gui=NONE guifg=white guibg=#1111ff
hi IncSearch 		       gui=NONE guifg=white guibg=#1111ff

hi DiffAdd                 gui=NONE guifg=black guibg=#fdfdfd
hi DiffChange              gui=NONE guifg=black guibg=#fdfdfd
hi DiffDelete              gui=NONE guifg=black guibg=#fdfdfd
hi DiffText  		       gui=NONE guifg=black guibg=#fdfdfd

hi LineNr 	               gui=NONE guifg=gray guibg=#111111
hi LineNrAbove             gui=NONE guifg=gray guibg=#111111
hi LineNrBelow             gui=NONE guifg=gray guibg=#111111
hi CursorLineNr            gui=NONE guifg=gray guibg=#111111

hi MatchParen              gui=NONE guifg=blue guibg=#fdfdfd

hi Folded                  gui=NONE guifg=black guibg=#fdfdfd
hi FoldColumn              gui=NONE guifg=black guibg=#fdfdfd

hi SpecialKey 		       gui=NONE guifg=black guibg=#fdfdfd
hi ToolbarLine             gui=NONE guifg=black guibg=#fdfdfd
hi ToolbarButton           gui=NONE guifg=black guibg=#fdfdfd
hi Directory 		       gui=NONE guifg=#444444 guibg=#fdfdfd
hi Question                gui=NONE guifg=black guibg=#fdfdfd
hi Title                   gui=NONE guifg=black guibg=#fdfdfd
hi SignColumn 		       gui=NONE guifg=black guibg=#fdfdfd
hi Conceal   		       gui=NONE guifg=black guibg=#fdfdfd
hi SpellBad 		       gui=NONE guifg=black guibg=#fdfdfd
hi SpellCap   		       gui=NONE guifg=black guibg=#fdfdfd
hi SpellRare 		       gui=NONE guifg=black guibg=#fdfdfd
hi SpellLocal 		       gui=NONE guifg=black guibg=#fdfdfd
hi ColorColumn             gui=NONE guifg=black guibg=red
hi QuickFixLine            gui=NONE guifg=black guibg=#fdfdfd
hi Underlined              gui=NONE guifg=black guibg=#fdfdfd
hi Ignore                  gui=NONE guifg=black guibg=#fdfdfd
hi Debug                   gui=NONE guifg=black guibg=#fdfdfd
hi multiple_cursors_curso  gui=NONE guifg=black guibg=#fdfdfd
hi multiple_cursors_visual gui=NONE guifg=black guibg=#fdfdfd
hi markdownH1              gui=NONE guifg=black guibg=#fdfdfd
hi markdownH2              gui=NONE guifg=black guibg=#fdfdfd
hi markdownH3              gui=NONE guifg=black guibg=#fdfdfd
hi markdownLinkText        gui=NONE guifg=black guibg=#fdfdfd

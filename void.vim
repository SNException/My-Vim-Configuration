set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "void"

hi Normal                  gui=NONE guifg=#aaaaaa guibg=#010a15

hi Visual				   gui=NONE guifg=NONE guibg=#0000ff
hi VisualNOS               gui=NONE guifg=#aaaaaa guibg=#010a15

" hi Comment                 gui=NONE guifg=#7575ff guibg=#010a15
hi Comment                 gui=NONE guifg=green guibg=#010a15
hi SpecialComment          gui=NONE guifg=green guibg=#010a15
hi Todo                    gui=NONE guifg=green guibg=#010a15
hi Note                    gui=NONE guifg=green guibg=#010a15
hi Special                 gui=NONE guifg=green guibg=#010a15
hi Keyword                 gui=NONE guifg=#eeeeee guibg=#010a15
hi Identifier              gui=NONE guifg=#eeeeee guibg=#010a15
hi PreProc                 gui=NONE guifg=#eeeeee guibg=#010a15
hi Function                gui=NONE guifg=#aaaaaa guibg=#010a15
hi Label                   gui=NONE guifg=#eeeeee guibg=#010a15
hi Statement               gui=NONE guifg=#eeeeee guibg=#010a15
hi Include                 gui=NONE guifg=#eeeeee guibg=#010a15
hi Define                  gui=NONE guifg=#eeeeee guibg=#010a15
hi Macro                   gui=NONE guifg=#eeeeee guibg=#010a15
hi PreCondit               gui=NONE guifg=#eeeeee guibg=#010a15
hi StorageClass            gui=NONE guifg=#eeeeee guibg=#010a15
hi Structure               gui=NONE guifg=#eeeeee guibg=#010a15
hi Typedef                 gui=NONE guifg=#eeeeee guibg=#010a15
hi Operator                gui=NONE guifg=#eeeeee guibg=#010a15
hi Conditional             gui=NONE guifg=#eeeeee guibg=#010a15

hi Type                    gui=NONE guifg=#eeeeee guibg=#010a15
hi Number                  gui=NONE guifg=#aaaaaa guibg=#010a15
hi Float                   gui=NONE guifg=#aaaaaa guibg=#010a15
hi Constant                gui=NONE guifg=#eeeeee guibg=#010a15
hi Boolean                 gui=NONE guifg=#eeeeee guibg=#010a15

hi Repeat                  gui=NONE guifg=#eeeeee guibg=#010a15
hi Exception               gui=NONE guifg=#eeeeee guibg=#010a15
hi String                  gui=NONE guifg=#777777 guibg=#010a15
hi Error                   gui=NONE guifg=#eeeeee guibg=#010a15

hi NonText  		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi Character               gui=NONE guifg=#777777 guibg=#010a15
hi SpecialChar             gui=NONE guifg=#777777 guibg=#010a15
hi Tag                     gui=NONE guifg=#aaaaaa guibg=#010a15
hi Delimiter               gui=NONE guifg=#aaaaaa guibg=#010a15

hi WarningMsg              gui=NONE guifg=#aaaaaa guibg=#010a15
hi ErrorMsg 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi MoreMsg 		           gui=NONE guifg=#aaaaaa guibg=#010a15
hi ModeMsg                 gui=NONE guifg=#aaaaaa guibg=#010a15

hi TabLine       		   gui=NONE guifg=#aaaaaa guibg=#333333
hi TabLineSel   		   gui=NONE guifg=#aaaaaa guibg=#333333
hi TabLineFill  		   gui=NONE guifg=#aaaaaa guibg=#333333

hi VertSplit               gui=NONE guibg=#aaaaaa guifg=#222222

hi WildMenu                gui=bold guifg=#aaaaaa guibg=#773333

hi StatusLine              gui=NONE guifg=black    guibg=#575757
hi StatusLineNC            gui=NONE guifg=black    guibg=#404040
hi StatusLineTerm          gui=NONE guifg=black    guibg=#575757
hi StatusLineTermNC        gui=NONE guifg=black    guibg=#404040

hi Pmenu      		       gui=NONE guifg=#aaaaaa guibg=#ff4040
hi PmenuSel   		       gui=NONE guifg=#aaaaaa guibg=#ff4040
hi PmenuSbar 		       gui=NONE guifg=#aaaaaa guibg=#ff4040
hi PmenuThumb 		       gui=NONE guifg=#aaaaaa guibg=#ff4040

hi Cursor                  gui=NONE guifg=black   guibg=white
hi iCursor                 gui=NONE guifg=black   guibg=white
hi lCursor                 gui=NONE guifg=black   guibg=#77ff77
hi CursorLine              gui=NONE guifg=black   guibg=#777777
hi CursorColumn            gui=NONE guifg=black   guibg=#777777

hi EndOfBuffer 		       gui=NONE guifg=#aaaaaa guibg=#010a15

hi Search 		           gui=NONE guifg=black guibg=#fa87a1
hi IncSearch 		       gui=NONE guifg=black guibg=#fa87a1

hi DiffAdd                 gui=NONE guifg=#aaaaaa guibg=#010a15
hi DiffChange              gui=NONE guifg=#aaaaaa guibg=#010a15
hi DiffDelete              gui=NONE guifg=#aaaaaa guibg=#010a15
hi DiffText  		       gui=NONE guifg=#aaaaaa guibg=#010a15

hi LineNr 	               gui=NONE guifg=#aaaaaa guibg=#010a15
hi LineNrAbove             gui=NONE guifg=#aaaaaa guibg=#010a15
hi LineNrBelow             gui=NONE guifg=#aaaaaa guibg=#010a15
hi CursorLineNr            gui=NONE guifg=#aaaaaa guibg=#010a15

hi MatchParen              gui=NONE guifg=#aaaaaa guibg=#333333

hi Folded                  gui=NONE guifg=#aaaaaa guibg=#010a15
hi FoldColumn              gui=NONE guifg=#aaaaaa guibg=#010a15

hi ColorColumn             gui=NONE guifg=#aaaaaa guibg=#ff4444
hi SpecialKey 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi ToolbarLine             gui=NONE guifg=#aaaaaa guibg=#010a15
hi ToolbarButton           gui=NONE guifg=#aaaaaa guibg=#010a15
hi Directory 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi Question                gui=NONE guifg=#aaaaaa guibg=#010a15
hi Title                   gui=NONE guifg=#aaaaaa guibg=#010a15
hi SignColumn 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi Conceal   		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi SpellBad 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi SpellCap   		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi SpellRare 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi SpellLocal 		       gui=NONE guifg=#aaaaaa guibg=#010a15
hi QuickFixLine            gui=NONE guifg=#aaaaaa guibg=#010a15
hi Underlined              gui=NONE guifg=#aaaaaa guibg=#010a15
hi Ignore                  gui=NONE guifg=#aaaaaa guibg=#010a15
hi Debug                   gui=NONE guifg=#aaaaaa guibg=#010a15
hi multiple_cursors_curso  gui=NONE guifg=#aaaaaa guibg=#010a15
hi multiple_cursors_visual gui=NONE guifg=#aaaaaa guibg=#010a15
hi markdownH1              gui=NONE guifg=#aaaaaa guibg=#010a15
hi markdownH2              gui=NONE guifg=#aaaaaa guibg=#010a15
hi markdownH3              gui=NONE guifg=#aaaaaa guibg=#010a15
hi markdownLinkText        gui=NONE guifg=#aaaaaa guibg=#010a15


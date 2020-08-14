set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "magma"

hi Normal                  gui=NONE guifg=#b9aa95 guibg=#272727

hi Visual				   gui=NONE guifg=NONE guibg=#0000ff
hi VisualNOS               gui=NONE guifg=#b9aa95 guibg=#272727

hi Comment                 gui=NONE guifg=#e4e343 guibg=#272727
hi SpecialComment          gui=NONE guifg=#e4e343 guibg=#272727
hi Todo                    gui=NONE guifg=#e4e343 guibg=#272727
hi Note                    gui=NONE guifg=#e4e343 guibg=#272727
hi javaDocTags             gui=NONE guifg=#e4e343 guibg=#272727
hi javaDocParam            gui=NONE guifg=#e4e343 guibg=#272727
hi javaDocSeeTagParam      gui=NONE guifg=#e4e343 guibg=#272727
hi javaCommentTitle        gui=NONE guifg=#e4e343 guibg=#272727
hi Special                 gui=NONE guifg=#b9aa95 guibg=#272727
hi Keyword                 gui=NONE guifg=#ff6060 guibg=#272727
hi Identifier              gui=NONE guifg=#ff6060 guibg=#272727
hi PreProc                 gui=NONE guifg=#ff6060 guibg=#272727
hi Function                gui=NONE guifg=#b9aa95 guibg=#272727
hi Label                   gui=NONE guifg=#ff6060 guibg=#272727
hi Statement               gui=NONE guifg=#ff6060 guibg=#272727
hi Include                 gui=NONE guifg=#86e08f guibg=#272727
hi Define                  gui=NONE guifg=#ff6060 guibg=#272727
hi Macro                   gui=NONE guifg=#ff6060 guibg=#272727
hi PreCondit               gui=NONE guifg=#b9aa95 guibg=#272727
hi StorageClass            gui=NONE guifg=#ff6060 guibg=#272727
hi Structure               gui=NONE guifg=#ff6060 guibg=#272727
hi Typedef                 gui=NONE guifg=#ff6060 guibg=#272727
hi Operator                gui=NONE guifg=#ff6060 guibg=#272727
hi Conditional             gui=NONE guifg=#ff6060 guibg=#272727

" hi Type                    gui=NONE guifg=#dfcfb5 guibg=#272727
hi Type                    gui=NONE guifg=#efdfc6 guibg=#272727
" hi Number                  gui=NONE guifg=#ff8080 guibg=#272727
" hi Float                   gui=NONE guifg=#ff8080 guibg=#272727
hi Number                  gui=NONE guifg=#b9aa95 guibg=#272727
hi Float                   gui=NONE guifg=#b9aa95 guibg=#272727
hi Constant                gui=NONE guifg=#efdfc6 guibg=#272727
hi Boolean                 gui=NONE guifg=#efdfc6 guibg=#272727

hi Repeat                  gui=NONE guifg=#ff6060 guibg=#272727
hi Exception               gui=NONE guifg=#ff6060 guibg=#272727
hi String                  gui=NONE guifg=#858585 guibg=#272727
hi Error                   gui=NONE guifg=#ff6060 guibg=#272727

hi NonText  		       gui=NONE guifg=#b9aa95 guibg=#272727
hi Character               gui=NONE guifg=#858585 guibg=#272727
hi SpecialChar             gui=NONE guifg=#b9aa95 guibg=#272727
hi Tag                     gui=NONE guifg=#b9aa95 guibg=#272727
hi Delimiter               gui=NONE guifg=#b9aa95 guibg=#272727

hi WarningMsg              gui=NONE guifg=#b9aa95 guibg=#272727
hi ErrorMsg 		       gui=NONE guifg=#ff6060 guibg=#272727
hi MoreMsg 		           gui=NONE guifg=#b9aa95 guibg=#272727
hi ModeMsg                 gui=NONE guifg=#ffbbbb guibg=#272727

hi TabLine       		   gui=NONE guifg=#b9aa95 guibg=#333333
hi TabLineSel   		   gui=NONE guifg=#ffffff guibg=#333333
hi TabLineFill  		   gui=NONE guifg=#999999 guibg=#333333

hi VertSplit               gui=NONE guibg=#333333 guifg=#999999

hi WildMenu                gui=bold guifg=darkgray guibg=#773333

hi StatusLine              gui=NONE guifg=black    guibg=#525252
hi StatusLineNC            gui=NONE guifg=black    guibg=#404040
hi StatusLineTerm          gui=NONE guifg=black    guibg=#525252
hi StatusLineTermNC        gui=NONE guifg=black    guibg=#404040

hi Pmenu      		       gui=NONE guifg=darkgray   guibg=#111111
hi PmenuSel   		       gui=NONE guifg=white      guibg=#441111
hi PmenuThumb 		       gui=NONE guifg=#b9aa95    guibg=#272727
hi PmenuSbar 		       gui=NONE guifg=#b9aa95    guibg=#272727

hi Cursor                  gui=NONE guifg=black   guibg=#87ff87
hi iCursor                 gui=NONE guifg=black   guibg=#87ff87
hi lCursor                 gui=NONE guifg=black   guibg=#87ff87
hi CursorLine              gui=NONE guifg=NONE    guibg=#0f0f0f
hi CursorColumn            gui=NONE guifg=NONE    guibg=#090909

hi EndOfBuffer 		       gui=NONE guifg=#555555 guibg=#272727

hi Search 		           gui=NONE guifg=black guibg=#fa87a1
hi IncSearch 		       gui=NONE guifg=black guibg=#fa87a1

hi DiffAdd                 gui=NONE guifg=#b9aa95 guibg=#272727
hi DiffChange              gui=NONE guifg=#b9aa95 guibg=#272727
hi DiffDelete              gui=NONE guifg=#b9aa95 guibg=#272727
hi DiffText  		       gui=NONE guifg=#b9aa95 guibg=#272727

hi LineNr 	               gui=NONE guifg=#777777 guibg=#272727
hi LineNrAbove             gui=NONE guifg=#777777 guibg=#272727
hi LineNrBelow             gui=NONE guifg=#777777 guibg=#272727
hi CursorLineNr            gui=NONE guifg=#777777 guibg=#272727

hi MatchParen              gui=NONE guifg=#b9aa95 guibg=#333333

hi Folded                  gui=NONE guifg=#b9aa95 guibg=#272727
hi FoldColumn              gui=NONE guifg=#b9aa95 guibg=#272727

hi ColorColumn             gui=NONE guifg=#b9aa95 guibg=#ff4444
hi SpecialKey 		       gui=NONE guifg=#b9aa95 guibg=#272727
hi ToolbarLine             gui=NONE guifg=#b9aa95 guibg=#272727
hi ToolbarButton           gui=NONE guifg=#b9aa95 guibg=#272727
hi Directory 		       gui=NONE guifg=lightgreen guibg=#272727
hi Question                gui=NONE guifg=#b9aa95 guibg=#272727
hi Title                   gui=NONE guifg=#b9aa95 guibg=#272727
hi SignColumn 		       gui=NONE guifg=#b9aa95 guibg=#272727
hi Conceal   		       gui=NONE guifg=#b9aa95 guibg=#272727
hi SpellBad 		       gui=NONE guifg=#b9aa95 guibg=#272727
hi SpellCap   		       gui=NONE guifg=#b9aa95 guibg=#272727
hi SpellRare 		       gui=NONE guifg=#b9aa95 guibg=#272727
hi SpellLocal 		       gui=NONE guifg=#b9aa95 guibg=#272727
hi QuickFixLine            gui=NONE guifg=#b9aa95 guibg=#272727
hi Underlined              gui=NONE guifg=#b9aa95 guibg=#272727
hi Ignore                  gui=NONE guifg=#b9aa95 guibg=#272727
hi Debug                   gui=NONE guifg=#b9aa95 guibg=#272727
hi multiple_cursors_curso  gui=NONE guifg=#b9aa95 guibg=#272727
hi multiple_cursors_visual gui=NONE guifg=#b9aa95 guibg=#272727
hi markdownH1              gui=NONE guifg=#b9aa95 guibg=#272727
hi markdownH2              gui=NONE guifg=#b9aa95 guibg=#272727
hi markdownH3              gui=NONE guifg=#b9aa95 guibg=#272727
hi markdownLinkText        gui=NONE guifg=#b9aa95 guibg=#272727


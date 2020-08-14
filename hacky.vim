set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "hacky"

hi Normal                  gui=NONE guifg=#aaaaaa guibg=black

hi Visual				   gui=NONE guifg=NONE guibg=#0000ff
hi VisualNOS               gui=NONE guifg=#aaaaaa guibg=black

hi Comment                 gui=NONE guifg=#727272 guibg=black
hi SpecialComment          gui=NONE guifg=#727272 guibg=black
hi Todo                    gui=NONE guifg=#727272 guibg=black
hi Note                    gui=NONE guifg=#727272 guibg=black
hi Special                 gui=NONE guifg=#aaaaaa guibg=black
hi Keyword                 gui=NONE guifg=yellow guibg=black
hi Identifier              gui=NONE guifg=yellow guibg=black
hi PreProc                 gui=NONE guifg=#aaaaaa guibg=black
hi Function                gui=NONE guifg=#aaaaaa guibg=black
hi Label                   gui=NONE guifg=yellow guibg=black
hi Statement               gui=NONE guifg=yellow guibg=black
hi Include                 gui=NONE guifg=#4444ff guibg=black
hi Define                  gui=NONE guifg=#4444ff guibg=black
hi Macro                   gui=NONE guifg=#4444ff guibg=black
hi PreCondit               gui=NONE guifg=yellow guibg=black
hi StorageClass            gui=NONE guifg=yellow guibg=black
hi Structure               gui=NONE guifg=yellow guibg=black
hi Typedef                 gui=NONE guifg=yellow guibg=black
hi Operator                gui=NONE guifg=yellow guibg=black
hi Conditional             gui=NONE guifg=yellow guibg=black

hi Type                    gui=NONE guifg=green   guibg=black
hi Number                  gui=NONE guifg=magenta guibg=black
hi Float                   gui=NONE guifg=magenta guibg=black
hi Constant                gui=NONE guifg=magenta guibg=black
hi Boolean                 gui=NONE guifg=magenta guibg=black

hi Repeat                  gui=NONE guifg=yellow guibg=black
hi Exception               gui=NONE guifg=yellow guibg=black
hi String                  gui=NONE guifg=magenta guibg=black
hi Error                   gui=NONE guifg=yellow guibg=black

hi NonText  		       gui=NONE guifg=#aaaaaa guibg=black
hi Character               gui=NONE guifg=#aaaaaa guibg=black
hi SpecialChar             gui=NONE guifg=red guibg=black
hi Tag                     gui=NONE guifg=#aaaaaa guibg=black
hi Delimiter               gui=NONE guifg=#aaaaaa guibg=black

hi WarningMsg              gui=NONE guifg=#aaaaaa guibg=black
hi ErrorMsg 		       gui=NONE guifg=#aaaaaa guibg=black
hi MoreMsg 		           gui=NONE guifg=#aaaaaa guibg=black
hi ModeMsg                 gui=NONE guifg=#aaaaaa guibg=black

hi TabLine       		   gui=NONE guifg=#aaaaaa guibg=#333333
hi TabLineSel   		   gui=NONE guifg=#aaaaaa guibg=#333333
hi TabLineFill  		   gui=NONE guifg=#aaaaaa guibg=#333333

hi VertSplit               gui=NONE guibg=#111111 guifg=#111111

hi WildMenu                gui=bold guifg=#aaaaaa guibg=#773333

hi StatusLine              gui=NONE guifg=#aaaaaa    guibg=#111111
hi StatusLineNC            gui=NONE guifg=#aaaaaa    guibg=#333333
hi StatusLineTerm          gui=NONE guifg=#aaaaaa    guibg=#111111
hi StatusLineTermNC        gui=NONE guifg=#aaaaaa    guibg=#333333

hi Pmenu      		       gui=NONE guifg=#444444   guibg=#222222
hi PmenuSel   		       gui=NONE guifg=#aaaaaa   guibg=#222222
hi PmenuSbar 		       gui=NONE guifg=#aaaaaa   guibg=#222222
hi PmenuThumb 		       gui=NONE guifg=#aaaaaa   guibg=#222222

hi Cursor                  gui=NONE guifg=black      guibg=white
hi iCursor                 gui=NONE guifg=black      guibg=white
hi lCursor                 gui=NONE guifg=black      guibg=white
hi CursorLine              gui=NONE guifg=#aaaaaa    guibg=#090909
hi CursorColumn            gui=NONE guifg=#aaaaaa    guibg=#090909

hi EndOfBuffer 		       gui=NONE guifg=black guibg=black

hi Search 		           gui=NONE guifg=black guibg=#fa87a1
hi IncSearch 		       gui=NONE guifg=black guibg=#fa87a1

hi DiffAdd                 gui=NONE guifg=#aaaaaa guibg=black
hi DiffChange              gui=NONE guifg=#aaaaaa guibg=black
hi DiffDelete              gui=NONE guifg=#aaaaaa guibg=black
hi DiffText  		       gui=NONE guifg=#aaaaaa guibg=black

hi LineNr 	               gui=NONE guifg=#aaaaaa guibg=black
hi LineNrAbove             gui=NONE guifg=#aaaaaa guibg=black
hi LineNrBelow             gui=NONE guifg=#aaaaaa guibg=black
hi CursorLineNr            gui=NONE guifg=#aaaaaa guibg=black

hi MatchParen              gui=NONE guifg=#aaaaaa guibg=#333333

hi Folded                  gui=NONE guifg=#aaaaaa guibg=black
hi FoldColumn              gui=NONE guifg=#aaaaaa guibg=black

hi ColorColumn             gui=NONE guifg=#aaaaaa guibg=#ff4444
hi SpecialKey 		       gui=NONE guifg=#aaaaaa guibg=black
hi ToolbarLine             gui=NONE guifg=#aaaaaa guibg=black
hi ToolbarButton           gui=NONE guifg=#aaaaaa guibg=black
hi Directory 		       gui=NONE guifg=green guibg=black
hi Question                gui=NONE guifg=#aaaaaa guibg=black
hi Title                   gui=NONE guifg=#aaaaaa guibg=black
hi SignColumn 		       gui=NONE guifg=#aaaaaa guibg=black
hi Conceal   		       gui=NONE guifg=#aaaaaa guibg=black
hi SpellBad 		       gui=NONE guifg=#aaaaaa guibg=black
hi SpellCap   		       gui=NONE guifg=#aaaaaa guibg=black
hi SpellRare 		       gui=NONE guifg=#aaaaaa guibg=black
hi SpellLocal 		       gui=NONE guifg=#aaaaaa guibg=black
hi QuickFixLine            gui=NONE guifg=#aaaaaa guibg=black
hi Underlined              gui=NONE guifg=#aaaaaa guibg=black
hi Ignore                  gui=NONE guifg=#aaaaaa guibg=black
hi Debug                   gui=NONE guifg=#aaaaaa guibg=black
hi multiple_cursors_curso  gui=NONE guifg=#aaaaaa guibg=black
hi multiple_cursors_visual gui=NONE guifg=#aaaaaa guibg=black
hi markdownH1              gui=NONE guifg=#aaaaaa guibg=black
hi markdownH2              gui=NONE guifg=#aaaaaa guibg=black
hi markdownH3              gui=NONE guifg=#aaaaaa guibg=black
hi markdownLinkText        gui=NONE guifg=#aaaaaa guibg=black

" -----------------------------------------------------------------

hi Normal                  cterm=NONE ctermfg=white ctermbg=black

hi Visual				   cterm=NONE ctermfg=NONE ctermbg=blue
hi VisualNOS               cterm=NONE ctermfg=white ctermbg=black

hi Comment                 cterm=NONE ctermfg=darkgray ctermbg=black
hi SpecialComment          cterm=NONE ctermfg=darkgray ctermbg=black
hi Todo                    cterm=NONE ctermfg=darkgray ctermbg=black
hi Note                    cterm=NONE ctermfg=darkgray ctermbg=black
hi Special                 cterm=NONE ctermfg=white ctermbg=black
hi Keyword                 cterm=NONE ctermfg=yellow ctermbg=black
hi Identifier              cterm=NONE ctermfg=yellow ctermbg=black
hi PreProc                 cterm=NONE ctermfg=white ctermbg=black
hi Function                cterm=NONE ctermfg=white ctermbg=black
hi Label                   cterm=NONE ctermfg=yellow ctermbg=black
hi Statement               cterm=NONE ctermfg=yellow ctermbg=black
hi Include                 cterm=NONE ctermfg=blue ctermbg=black
hi Define                  cterm=NONE ctermfg=blue ctermbg=black
hi Macro                   cterm=NONE ctermfg=blue ctermbg=black
hi PreCondit               cterm=NONE ctermfg=yellow ctermbg=black
hi StorageClass            cterm=NONE ctermfg=yellow ctermbg=black
hi Structure               cterm=NONE ctermfg=yellow ctermbg=black
hi Typedef                 cterm=NONE ctermfg=yellow ctermbg=black
hi Operator                cterm=NONE ctermfg=yellow ctermbg=black
hi Conditional             cterm=NONE ctermfg=yellow ctermbg=black

hi Type                    cterm=NONE ctermfg=green   ctermbg=black
hi Number                  cterm=NONE ctermfg=magenta ctermbg=black
hi Float                   cterm=NONE ctermfg=magenta ctermbg=black
hi Constant                cterm=NONE ctermfg=magenta ctermbg=black
hi Boolean                 cterm=NONE ctermfg=magenta ctermbg=black

hi Repeat                  cterm=NONE ctermfg=yellow ctermbg=black
hi Exception               cterm=NONE ctermfg=yellow ctermbg=black
hi String                  cterm=NONE ctermfg=magenta ctermbg=black
hi Error                   cterm=NONE ctermfg=yellow ctermbg=black

hi NonText  		       cterm=NONE ctermfg=white ctermbg=black
hi Character               cterm=NONE ctermfg=white ctermbg=black
hi SpecialChar             cterm=NONE ctermfg=red ctermbg=black
hi Tag                     cterm=NONE ctermfg=white ctermbg=black
hi Delimiter               cterm=NONE ctermfg=white ctermbg=black

hi WarningMsg              cterm=NONE ctermfg=white ctermbg=black
hi ErrorMsg 		       cterm=NONE ctermfg=white ctermbg=black
hi MoreMsg 		           cterm=NONE ctermfg=white ctermbg=black
hi ModeMsg                 cterm=NONE ctermfg=white ctermbg=black

hi TabLine       		   cterm=NONE ctermfg=white ctermbg=darkgray
hi TabLineSel   		   cterm=NONE ctermfg=white ctermbg=darkgray
hi TabLineFill  		   cterm=NONE ctermfg=white ctermbg=darkgray

hi VertSplit               cterm=NONE ctermbg=darkgray ctermfg=darkgray

hi WildMenu                cterm=bold ctermfg=white ctermbg=red

hi StatusLine              cterm=NONE ctermfg=white    ctermbg=darkgray
hi StatusLineNC            cterm=NONE ctermfg=white    ctermbg=darkgray
hi StatusLineTerm          cterm=NONE ctermfg=white    ctermbg=darkgray
hi StatusLineTermNC        cterm=NONE ctermfg=white    ctermbg=darkgray

hi Pmenu      		       cterm=NONE ctermfg=darkgray   ctermbg=darkgray
hi PmenuSel   		       cterm=NONE ctermfg=white   ctermbg=darkgray
hi PmenuSbar 		       cterm=NONE ctermfg=white   ctermbg=darkgray
hi PmenuThumb 		       cterm=NONE ctermfg=white   ctermbg=darkgray

hi Cursor                  cterm=NONE ctermfg=black    ctermbg=green
hi iCursor                 cterm=NONE ctermfg=black    ctermbg=red
hi lCursor                 cterm=NONE ctermfg=black    ctermbg=green
hi CursorLine              cterm=NONE ctermfg=white    ctermbg=black
hi CursorColumn            cterm=NONE ctermfg=white    ctermbg=black

hi EndOfBuffer 		       cterm=NONE ctermfg=black ctermbg=black

hi Search 		           cterm=NONE ctermfg=black ctermbg=red
hi IncSearch 		       cterm=NONE ctermfg=black ctermbg=red

hi DiffAdd                 cterm=NONE ctermfg=white ctermbg=black
hi DiffChange              cterm=NONE ctermfg=white ctermbg=black
hi DiffDelete              cterm=NONE ctermfg=white ctermbg=black
hi DiffText  		       cterm=NONE ctermfg=white ctermbg=black

hi LineNr 	               cterm=NONE ctermfg=white ctermbg=black
hi LineNrAbove             cterm=NONE ctermfg=white ctermbg=black
hi LineNrBelow             cterm=NONE ctermfg=white ctermbg=black
hi CursorLineNr            cterm=NONE ctermfg=white ctermbg=black

hi MatchParen              cterm=NONE ctermfg=white ctermbg=gray

hi Folded                  cterm=NONE ctermfg=white ctermbg=black
hi FoldColumn              cterm=NONE ctermfg=white ctermbg=black

hi ColorColumn             cterm=NONE ctermfg=white ctermbg=red
hi SpecialKey 		       cterm=NONE ctermfg=white ctermbg=black
hi ToolbarLine             cterm=NONE ctermfg=white ctermbg=black
hi ToolbarButton           cterm=NONE ctermfg=white ctermbg=black
hi Directory 		       cterm=NONE ctermfg=darkyellow ctermbg=black
hi Question                cterm=NONE ctermfg=white ctermbg=black
hi Title                   cterm=NONE ctermfg=white ctermbg=black
hi SignColumn 		       cterm=NONE ctermfg=white ctermbg=black
hi Conceal   		       cterm=NONE ctermfg=white ctermbg=black
hi SpellBad 		       cterm=NONE ctermfg=white ctermbg=black
hi SpellCap   		       cterm=NONE ctermfg=white ctermbg=black
hi SpellRare 		       cterm=NONE ctermfg=white ctermbg=black
hi SpellLocal 		       cterm=NONE ctermfg=white ctermbg=black
hi QuickFixLine            cterm=NONE ctermfg=white ctermbg=black
hi Underlined              cterm=NONE ctermfg=white ctermbg=black
hi Ignore                  cterm=NONE ctermfg=white ctermbg=black
hi Debug                   cterm=NONE ctermfg=white ctermbg=black
hi multiple_cursors_curso  cterm=NONE ctermfg=white ctermbg=black
hi multiple_cursors_visual cterm=NONE ctermfg=white ctermbg=black
hi markdownH1              cterm=NONE ctermfg=white ctermbg=black
hi markdownH2              cterm=NONE ctermfg=white ctermbg=black
hi markdownH3              cterm=NONE ctermfg=white ctermbg=black
hi markdownLinkText        cterm=NONE ctermfg=white ctermbg=black


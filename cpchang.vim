" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF
" ********************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "cpchang"

" General colors
hi Normal           guifg=#cfbfad     guibg=#000000      gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText          guifg=black       guibg=black        gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE
hi Cursor           guifg=black       guibg=green        gui=none      ctermfg=black       ctermbg=darkgray    cterm=NONE   
hi LineNr           guifg=#dfffaf     guibg=black        gui=NONE      ctermfg=193	      ctermbg=NONE        cterm=NONE
hi VertSplit        guifg=darkgray    guibg=darkgray    gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg=white       guibg=darkgray    gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=blue        guibg=darkgray    gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE  
hi Folded           guifg=NONE        guibg=black        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title            guifg=NONE        guibg=black        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual           guifg=NONE        guibg=DARKGRAY    gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE
hi SpecialKey       guifg=NONE        guibg=black        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi WildMenu         guifg=black       guibg=yellow      gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Error            guifg=white       guibg=red         gui=NONE      ctermfg=white       ctermbg=red         cterm=NONE     
hi ErrorMsg         guifg=white       guibg=red         gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=white       guibg=yellow      gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=#eeeeee     guibg=#5f00af     gui=NONE      ctermfg=255         ctermbg=55          cterm=NONE
  hi CursorColumn   guifg=NONE        guibg=black        gui=BOLD      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=0           ctermbg=10          cterm=NONE

  hi Search         guifg=#ffffff     guibg=#0000ff     gui=underline ctermfg=15          ctermbg=12          cterm=underline
  hi Pmenu			  guifg=#dadada     guibg=#666666     gui=NONE      ctermfg=253         ctermbg=242			  cterm=NONE  
  hi PmenuSel		  guifg=#dadada     guibg=#800080     gui=BOLD      cterm=BOLD          ctermfg=253         ctermbg=5             
  hi PmenuSbar      guifg=NONE        guibg=black        gui=NONE  	 cterm=BOLD          ctermfg=253         ctermbg=63
  hi PmenuThumb     guifg=NONE        guibg=black        gui=NONE		 cterm=BOLD          ctermfg=253         ctermbg=63
  hi SpellBad       guifg=NONE        guibg=black        gui=NONE		 cterm=NONE          ctermfg=9           ctermbg=NONE
  hi SpellRare      guifg=NONE        guibg=black        gui=NONE  	 cterm=NONE                              ctermbg=53
  hi SpellLocal     guifg=NONE        guibg=black        gui=NONE      cterm=NONE										  ctermbg=5823
  hi SpellCap       guifg=NONE        guibg=black        gui=NONE		 cterm=NONE										  ctermbg=23
endif

" Syntax highlighting
hi Comment          guifg=#5fffaf     guibg=#585858     gui=NONE      ctermfg=85          ctermbg=240         cterm=NONE
hi String           guifg=#ff005f     guibg=#262626     gui=NONE      ctermfg=197         ctermbg=235         cterm=NONE
hi Number           guifg=#ff00ff     guibg=black        gui=NONE      ctermfg=13          ctermbg=NONE        cterm=NONE
hi Keyword          guifg=#00ff00     guibg=black        gui=NONE      ctermfg=10          ctermbg=NONE        cterm=NONE
hi PreProc          guifg=#0087ff     guibg=black        gui=bold      ctermfg=33          ctermbg=NONE        cterm=bold
hi Conditional      guifg=#00ffff     guibg=black        gui=NONE      ctermfg=51          ctermbg=NONE        cterm=NONE  " if else end
hi Todo             guifg=#ffff00     guibg=black        gui=NONE      ctermfg=11          ctermbg=NONE        cterm=NONE
hi Constant         guifg=#00ff00     guibg=black        gui=NONE      ctermfg=10          ctermbg=NONE        cterm=NONE
hi Identifier       guifg=#ffaf00     guibg=black        gui=BOLD      ctermfg=214         ctermbg=NONE        cterm=BOLD
hi Function         guifg=#af5f5f     guibg=black        gui=NONE      ctermfg=131         ctermbg=NONE        cterm=NONE
hi Type             guifg=#ffaf00     guibg=black        gui=BOLD      ctermfg=214         ctermbg=NONE        cterm=BOLD
hi Statement        guifg=#00ffff     guibg=black        gui=NONE      ctermfg=51          ctermbg=NONE        cterm=NONE
hi Special          guifg=#ff0000     guibg=black        gui=NONE      ctermfg=9           ctermbg=NONE        cterm=NONE
hi Delimiter        guifg=#00ff00     guibg=black        gui=NONE      ctermfg=10          ctermbg=NONE        cterm=NONE
hi Operator         guifg=#00ff00     guibg=black        gui=NONE      ctermfg=10          ctermbg=NONE        cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=black      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=black      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=white        guibg=black      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=black      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=#6699CC      guibg=black      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=black      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633      guibg=black      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for Java
hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier 
hi link javaCommentTitle      javaDocSeeTag 
hi link javaDocTags           javaDocSeeTag 
hi link javaDocParam          javaDocSeeTag 
hi link javaDocSeeTagParam    javaDocSeeTag 

hi javaDocSeeTag              guifg=#CCCCCC     guibg=black        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=black        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaClassDecl              guifg=#CCFFCC     guibg=black        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword 
hi link xmlTagName      Conditional 
hi link xmlEndTag       Identifier 


" Special for HTML
hi link htmlTag         Keyword 
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 


" Special for Javascript
hi link javaScriptNumber      Number 


" Special for Python
"hi  link pythonEscape         Keyword      


" Special for CSharp
hi  link csXmlTag             Keyword      


" Special for PHP


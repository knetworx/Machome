hi clear
set bg=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nick_backup"

hi Comment					guifg=darkred																ctermfg=darkred
hi Constant					guifg=magenta							gui=none							ctermfg=magenta
hi DiffAdd										guibg=#000022		gui=none							ctermbg=darkblue
hi DiffChange									guibg=#150015		gui=none							ctermbg=darkmagenta
hi DiffDelete									guibg=#222222		gui=none							ctermbg=darkgray
hi DiffText										guibg=#550000											ctermbg=darkred
hi Directory				guifg=cyan												ctermfg=cyan
hi Error					guifg=white			guibg=red							ctermfg=white		ctermbg=red
hi Folded					guifg=gray			guibg=#004400						ctermfg=gray		ctermbg=darkgreen
hi FoldColumn				guifg=darkgreen		guibg=#222222						ctermfg=darkgreen	ctermbg=darkgray
hi Function					guifg=darkgray											ctermfg=darkgray							cterm=bold
hi Identifier				guifg=blue								gui=none		ctermfg=blue
hi MatchParen				guifg=white			guibg=#000000		gui=bold		ctermfg=white		ctermbg=black
hi Normal					guifg=#BBBBBB		guibg=#000000						ctermfg=white		ctermbg=black			cterm=bold
hi Number					guifg=red												ctermfg=red
hi PreProc					guifg=#00ff00											ctermfg=green
hi Operator					guifg=green												ctermfg=green
hi Search						               guibg=#c0c000											ctermbg=yellow
hi Special					guifg=red								gui=none		ctermfg=red
hi Statement				guifg=yellow							gui=none		ctermfg=yellow
hi StatusLine				guifg=#ffff00		guibg=#0000ff		gui=none		ctermfg=yellow		ctermbg=blue
hi String					guifg=magenta											ctermfg=magenta
hi Todo						guifg=#000080		guibg=#c0c000						ctermfg=red			ctermbg=yellow
hi Type						guifg=red								gui=none		ctermfg=red

" Completion Menu
hi Pmenu					guifg=#dddddd		guibg=#333333						ctermfg=white		ctermbg=darkgreen		cterm=bold
hi PmenuSel					guifg=#dddddd		guibg=#000055						ctermfg=lightgray	ctermbg=darkgreen

" C Highlighting
hi cBitField				guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cBlock				   guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cBracket				   guifg=green											ctermfg=green
hi cCharacter			   guifg=red											ctermfg=red
hi cComment				   guifg=#990000										ctermfg=darkred
hi cComment2String			guifg=gray											ctermfg=gray
hi cCommentError			guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCommentGroup			guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCommentL			   guifg=#990000										ctermfg=darkred
hi cCommentSkip				guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCommentStartError		guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red		cterm=bold
hi cCommentString			guifg=gray											ctermfg=gray
hi cConditional				guifg=yellow										ctermfg=yellow
hi cConstant			   guifg=#9400D3							   gui=none	ctermfg=darkmagenta
hi cCppBracket				guifg=green								   gui=none	ctermfg=green
hi cCppOut				   guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCppOut2				   guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCppParen				guifg=green											ctermfg=green
hi cCppSkip				   guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cCppString			   guifg=magenta										ctermfg=magenta
hi cDefine				   guifg=#9400D3										ctermfg=darkmagenta
hi cErrInBracket			guifg=fg			guibg=bg			gui=none	ctermfg=fg		ctermbg=bg	cterm=none
hi cErrInParen				guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red	cterm=bold
hi cFloat				   guifg=red											ctermfg=red
hi cFormat				   guifg=purple							   gui=bold		ctermfg=darkmagenta			cterm=bold
hi cInclude				   guifg=magenta										ctermfg=magenta
hi cIncluded			   guifg=magenta										ctermfg=magenta
hi cLabel				   guifg=yellow							   gui=bold		ctermfg=yellow				cterm=bold
hi cLabelGroup				guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cMulti				   guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cMultiGroup				guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cNumber				   guifg=red											ctermfg=red
hi cNumbers				   guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cNumbersCom				guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cOctal				   guifg=red											ctermfg=red
hi cOctalError				guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red			cterm=bold
hi cOctalZero			   guifg=red			guibg=black			gui=bold	ctermfg=red		ctermbg=black		cterm=bold
hi cOperator			   guifg=green											ctermfg=green
hi cParen				   guifg=green											ctermfg=green
hi cParenError				guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red			cterm=bold
hi cParenGroup				guifg=black			guibg=yellow		gui=bold    ctermfg=black     ctermbg=yellow    cterm=bold
hi cPreCondit			   guifg=yellow											ctermfg=yellow
hi cPreProc				   guifg=cyan											ctermfg=cyan
hi cPreProcGroup			guifg=black			guibg=yellow		gui=none    ctermfg=black     ctermbg=yellow    cterm=bold
hi cRepeat		 		   guifg=yellow											ctermfg=yellow
hi cSpaceError				guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red			cterm=bold
hi cSpecial				   guifg=darkred							gui=bold	ctermfg=darkred						cterm=bold
hi cSpecialCharacter		guifg=purple										ctermfg=darkmagenta
hi cSpecialError			guifg=white			guibg=red			gui=bold	ctermfg=white	ctermbg=red			cterm=bold
hi cStatement			   guifg=yellow											ctermfg=yellow
hi cStorageClass			guifg=yellow							gui=none	ctermfg=yellow						cterm=bold
hi cString				   guifg=magenta										ctermfg=magenta
hi cStructure				guifg=yellow										ctermfg=yellow
hi cTodo				    guifg=white			guibg=darkred		gui=bold,underline	ctermfg=white	ctermbg=darkred	cterm=bold,underline
hi cType					guifg=yellow										ctermfg=yellow
hi cUserCont			   guifg=green											ctermfg=green
hi cUserLabel			   guifg=cyan								gui=bold	ctermfg=cyan
" And some keywords I added...
hi cMyKeywords				guifg=blue											ctermfg=blue
hi cMyKeywords2			guifg=white									gui=none	ctermfg=white						cterm=none
hi cLibKeywords			guifg=cyan												ctermfg=cyan

" C++ Highlighting (extends from C Highlighting)
hi cppAccess			guifg=yellow											ctermfg=yellow
hi cppBoolean		    guifg=yellow											ctermfg=yellow
hi cppCast			    guifg=yellow											ctermfg=yellow
hi cppExceptions		guifg=orange											ctermfg=darkyellow
hi cppMinMax		    guifg=green												ctermfg=green
hi cppNumber		    guifg=red												ctermfg=red
hi cppOperator			guifg=green												ctermfg=green
hi cppStatement			guifg=yellow											ctermfg=yellow
hi cppStorageClass		guifg=yellow											ctermfg=yellow
hi cppStructure			guifg=yellow											ctermfg=yellow
hi cppType			    guifg=yellow											ctermfg=yellow
" Again, syntax elements I created
hi cppPragmaRegion		guifg=black			guibg=gray			gui=bold		ctermfg=black	ctermbg=gray	cterm=bold
hi cppPRKeywords		guifg=blue			guibg=gray			gui=bold		ctermfg=blue	ctermbg=gray	cterm=bold
hi cppRFGKeywords		guifg=blue												ctermfg=blue
hi cppFunctions			guifg=darkgray											ctermfg=darkgray
hi cppRFGDefines		guifg=#9400D3											ctermfg=cyan
hi cppPreProcWords		guifg=magenta											ctermfg=magenta
hi cppSectionHeader		guifg=cyan												ctermfg=cyan

hi dosbatchPath			guifg=darkgreen											ctermfg=darkgreen

" Java Highlighting
hi javaAssert              guifg=black     guibg=yellow		gui=bold			ctermfg=black     ctermbg=yellow    cterm=bold
hi javaBoolean             guifg=magenta                   	gui=bold			ctermfg=magenta						cterm=bold
hi javaBraces              guifg=green											ctermfg=green
hi javaBranch              guifg=yellow                    	gui=bold			ctermfg=yellow                      cterm=bold
hi javaCharacter           guifg=darkred                   	gui=bold			ctermfg=darkred						cterm=bold
hi javaClassDecl           guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaClasses             guifg=black     guibg=yellow    	gui=bold			ctermfg=black     ctermbg=yellow    cterm=bold
hi javaComment             guifg=red3											ctermfg=darkred
hi javaComment2String      guifg=black     guibg=yellow    	gui=bold			ctermfg=black     ctermbg=yellow    cterm=bold
hi javaCommentCharacter    guifg=darkcyan										ctermfg=darkcyan
hi javaCommentSpecial      guifg=darkcyan										ctermfg=darkcyan
hi javaCommentSpecial2     guifg=darkcyan										ctermfg=darkcyan
hi javaCommentStar         guifg=darkcyan										ctermfg=darkcyan
hi javaCommentString       guifg=darkcyan										ctermfg=darkcyan
hi javaCommentTitle        guifg=darkcyan										ctermfg=darkcyan
hi javaConditional         guifg=yellow											ctermfg=yellow
hi javaConstant            guifg=magenta                   	gui=bold			ctermfg=magenta						cterm=bold
hi javaDebugSpecial        guifg=black     guibg=yellow    	gui=bold			ctermfg=black     ctermbg=yellow    cterm=bold
hi javaDebugString         guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaDebugStringError    guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaDocComment          guifg=#228844                   	gui=none			ctermfg=darkgreen					cterm=bold
hi javaDocParam            guifg=cyan3											ctermfg=darkcyan
hi javaDocTags             guifg=cyan                      	gui=bold			ctermfg=cyan						cterm=bold
hi javaError               guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaError2              guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaExceptions          guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaExternal            guifg=magenta										ctermfg=magenta
hi javaFuncDef             guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaLabel               guifg=cyan                      	gui=bold    		ctermfg=cyan                        cterm=bold
hi javaLabelRegion         guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaLangClass           guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaLangObject          guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaLineComment         guifg=darkred                  	            		ctermfg=darkred
hi javaMethodDecl          guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaNumber              guifg=red											ctermfg=red
hi javaOK                  guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaOpchars             guifg=green											ctermfg=green
hi javaOperator            guifg=yellow											ctermfg=yellow
hi javaOperatorC			guifg=green											ctermfg=green
hi javaParen				guifg=green											ctermfg=green
hi javaRepeat              guifg=yellow											ctermfg=yellow
hi javaScopeDecl           guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaSpaceError          guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaSpecial             guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaSpecialChar         guifg=purple                    	gui=bold			ctermfg=darkmagenta					cterm=bold
hi javaSpecialCharError    guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaSpecialError        guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaStatement           guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaStorageClass        guifg=red3                      	gui=bold			ctermfg=darkred						cterm=bold
hi javaString              guifg=magenta										ctermfg=magenta
hi javaTodo                guifg=black     guibg=red       	gui=bold    		ctermfg=black     ctermbg=red       cterm=bold
hi javaTop                 guifg=black     guibg=yellow    	gui=bold    		ctermfg=black     ctermbg=yellow    cterm=bold
hi javaType                guifg=yellow                    	gui=bold			ctermfg=yellow						cterm=bold
hi javaTypedef             guifg=cyan                      	gui=bold			ctermfg=cyan						cterm=bold
hi javaUserLabel                                            gui=none												cterm=none
hi javaUserLabelRef			guifg=black     guibg=yellow	gui=bold			ctermfg=black     ctermbg=yellow    cterm=bold
hi javaR_JavaLang          guifg=black     guibg=green		gui=bold			ctermfg=black		ctermbg=green	cterm=bold
hi javaC_JavaLang          guifg=black     guibg=blue		gui=bold			ctermfg=black		ctermbg=blue	cterm=bold
hi javaE_JavaLang          guifg=black     guibg=magenta	gui=bold			ctermfg=black		ctermbg=magenta	cterm=bold
hi javaX_JavaLang          guifg=black     guibg=white		gui=bold			ctermfg=black		ctermbg=white	cterm=bold
hi javaR_Java				guifg=black     guibg=green		gui=bold			ctermfg=black		ctermbg=green	cterm=bold
hi javaC_Java				guifg=black     guibg=blue		gui=bold			ctermfg=black		ctermbg=blue	cterm=bold
hi javaE_Java				guifg=black     guibg=magenta   gui=bold			ctermfg=black		ctermbg=magenta	cterm=bold
hi javaX_Java				guifg=black     guibg=white		gui=bold			ctermfg=black		ctermbg=white	cterm=bold
hi javaNicksExceptions     guifg=purple						gui=bold			ctermfg=darkmagenta					cterm=bold
hi javaClassType           guifg=purple											ctermfg=darkmagenta

" JavaScript Highlighting
hi javaScriptFunction		guifg=yellow
hi javaScriptFunctions		guifg=darkgray

" QNA Highlighting (A filetype I created, see qna.vim)
hi qnaQuestion              guifg=white                     gui=bold    ctermfg=white                       cterm=bold
hi qnaStartNum              guifg=green                     gui=bold    ctermfg=green                       cterm=bold
hi qnaResponse              guifg=gray                                  ctermfg=gray
hi qnaMyName                guifg=red                       gui=bold    ctermfg=red                         cterm=bold

" VB Highlighting
hi vbOperator               guifg=green

" HTML Highlighting
hi cssStyle                 guifg=orange                                        ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlArg                  guifg=red                                           ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlBold                 guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlBoldItalic           guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlBoldItalicUnderline  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlBoldUnderline        guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlBoldUnderlineItalic  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlComment              guifg=gray                                          ctermfg=gray  
"hi htmlCommentError         guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlCommentPart          guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlCss                  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlCssDefinition        guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlCssStyleComment      guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
hi htmlEndTag               guifg=blue                      gui=bold            ctermfg=green                       cterm=bold
"hi htmlError                guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlEvent                guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlEventSQ              guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH1                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH2                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH3                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH4                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH5                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlH6                                                   gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlHead                 guifg=orange                                        ctermfg=white
"hi htmlHighlight            guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlHighlightSkip        guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlItalic               guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlItalicBold           guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlItalicBoldUnderline  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlItalicUnderline      guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlItalicUnderlineBold  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlJavaScript           guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlLink                 guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreAttr              guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreError             guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreProc              guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreProcAttrError     guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreProcAttrName      guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlPreStmt              guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
hi htmlScriptTag            guifg=blue                      gui=bold            ctermfg=blue
"hi htmlSpecialChar          guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlSpecialTageName      guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlString               guifg=magenta                                       ctermfg=magenta                     
"hi htmlStyleArg             guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
hi htmlTag                  guifg=blue                      gui=bold            ctermfg=green                       cterm=bold
"hi htmlTagError             guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlTagN                 guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlTagName              guifg=darkyellow                    gui=bold            ctermfg=darkgreen                   cterm=bold
hi htmlTitle                guifg=magenta                   gui=bold,underline                                      cterm=bold,underline
"hi htmlTop                  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlUnderline            guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlUnderlineBold        guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlUnderlineBoldItalic  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlUnderlineItalic      guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlUnderlineItalicBold  guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
"hi htmlValue                guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold
hi javaScript               guifg=green                                         ctermfg=black       ctermbg=yellow  cterm=bold
"hi javaScriptExpression     guifg=black     guibg=yellow    gui=bold            ctermfg=black       ctermbg=yellow  cterm=bold

" MATH highlighting
hi mathOperator             guifg=green
hi mathNumber               guifg=darkgray
hi mathVariable             guifg=white
hi mathExample              guifg=yellow                    gui=bold,underline

hi luaOperator				guifg=green											ctermfg=green
hi luaFunc					guifg=darkgray										ctermfg=darkgray
hi luaNumber				guifg=red											
hi luaConstant				guifg=purple3
hi luaFunction				guifg=yellow
hi luaVolitionConstant		guifg=#770077
hi luaVolitionSysConstant	guifg=blue

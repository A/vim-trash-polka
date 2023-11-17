function! s:hl(group, ctermfg, ctermbg, attr)
  if a:ctermfg != ""
    exec "hi " . a:group . " guifg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " guibg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfunction

" Attributes
call s:hl("Bold", "", "", "bold")
call s:hl("Italic", "", "", "italic")
call s:hl("Underline", "", "", "underline")

call s:hl("Success", g:color_success, "", "")
call s:hl("Warn", g:color_warn, "", "")
call s:hl("Info", g:color_info, "", "")
call s:hl("Error", g:color_error, "", "")

"+--- Editor ---+
call s:hl("Normal", "NONE", "None", "")
call s:hl("LineNr", g:color_secondary, "NONE", "")
call s:hl("ColorColumn", "", g:color_bg_alt, "")
call s:hl("Cursor", "", "NONE", "")
call s:hl("CursorLine", "NONE", g:color_bg_alt, "NONE")
call s:hl("iCursor", "", "NONE", "")
call s:hl("MatchParen", g:color_primary, g:color_bg_accent, "")
call s:hl("NonText", g:color_syntax_d, "", "")
call s:hl("SpecialKey", g:color_secondary, "", "")
call s:hl("PMenu", "NONE", g:color_bg_alt, "")
call s:hl("PmenuSbar", "NONE", g:color_bg_alt, "")
call s:hl("PmenuThumb", "NONE", g:color_secondary, "")
call s:hl("PMenuSel", g:color_bg_alt, g:color_bg_accent, "")

call s:hl("NvimInternalError", g:color_error, "NONE", "")
call s:hl("Error", g:color_error, "NONE", "")
call s:hl("RedrawDebugClear", g:color_secondary, g:color_warn, "")



call s:hl("Spell", "", "NONE", "undercurl")
hi! link SpellBad Spell
hi! link SpellLocal Spell
hi! link SpellRare Spell

call s:hl("Visual", g:color_primary, g:color_info, "")
hi! link VisualNOS Visual
hi! link VisualNC Visual

call s:hl("TelescopeMatching", g:color_error, "NONE", "")


"+- Neovim Support -+
call s:hl("healthError", g:color_error, "NONE", "")
call s:hl("healthSuccess", g:color_success, "NONE", "")
call s:hl("healthWarning", g:color_warn, "NONE" , "")

"+--- Gutter ---+
call s:hl("CursorColumn", "NONE", g:color_bg_alt, "")
call s:hl("CursorLineNr", g:color_primary, g:color_bg_alt, "")
call s:hl("Folded", g:color_secondary, g:color_bg_alt, "bold")
call s:hl("FoldColumn", g:color_secondary, "NONE", "")
call s:hl("SignColumn", g:color_bg_alt, "NONE", "")

"+--- Navigation ---+
call s:hl("Directory", g:color_primary, "NONE", "")

"+--- Prompt/Status ---+
call s:hl("EndOfBuffer", g:color_bg_alt, "NONE", "")
call s:hl("ErrorMsg", "", g:color_error, "")
call s:hl("ModeMsg", "", "", "")
call s:hl("MoreMsg", "", "", "")
call s:hl("Question", "NONE", "", "")
call s:hl("StatusLine", g:color_bg_alt, g:color_error, "NONE")
call s:hl("StatusLineNC", "NONE", g:color_secondary, "")
call s:hl("WarningMsg", g:color_bg_alt, g:color_warn, "")
call s:hl("WildMenu", g:color_bg, g:color_primary, "")

"+--- Search ---+
call s:hl("IncSearch", g:color_bg_alt, g:color_bg_accent, "NONE")
call s:hl("Search", g:color_bg_alt, g:color_bg_accent, "NONE")

"+--- Tabs ---+
call s:hl("TabLine", "NONE", g:color_bg_alt, "NONE")
call s:hl("TabLineFill", "NONE", g:color_bg_alt, "NONE")
call s:hl("TabLineSel", g:color_bg_alt, g:color_bg_accent, "NONE")

" Window
call s:hl("Title", "NONE", g:color_bg_alt, "NONE")
call s:hl("VertSplit", g:color_secondary, "NONE", "NONE")

" Linting
call s:hl("CocErrorSign", g:color_primary, g:color_error, "")
call s:hl("CocInfoSign", g:color_primary, g:color_info, "")
call s:hl("CocWarningSign", g:color_secondary, g:color_warn, "")
call s:hl("CocHintFloat", g:color_accent, g:color_bg_alt, "")
hi! link CocErrorFloat CocHintFloat
hi! link CocWarningFloat CocHintFloat
hi! link CocInfoFloat CocHintFloat

hi! link ALEErrorSign CocErrorSign
hi! link ALEWarningSign CocWarningSign
hi! link ALEInfoSign CocErrorSign

" Syntax
"
call s:hl("Comment", g:color_syntax_d, "", "")

call s:hl("Boolean", g:color_syntax_a, "", "bold")
call s:hl("Character", g:color_syntax_b, "", "")
call s:hl("Float", g:color_syntax_c, "", "")
call s:hl("Number", g:color_syntax_a, "", "bold")
call s:hl("String", g:color_syntax_a, "", "bold")
call s:hl("Label", g:color_syntax_a, "", "")
call s:hl("PreProc", g:color_syntax_c, "", "bold")
call s:hl("Type", g:color_syntax_a, "", "")
call s:hl("Todo", g:color_bg_alt, g:color_warn, "")
call s:hl("TodoBgTODO", g:color_bg, g:color_accent, "bold")
call s:hl("TodoFgTODO", g:color_bg, g:color_accent, "bold")

call s:hl("Identifier", g:color_syntax_a, "", "bold")
call s:hl("Conditional", g:color_syntax_c, "", "bold")
call s:hl("Delimiter", g:color_syntax_c, "", "")
call s:hl("Function", g:color_syntax_a, "", "")
call s:hl("Keyword", g:color_syntax_c, "", "bold")
call s:hl("Operator", g:color_syntax_a, "", "")
call s:hl("Special", g:color_syntax_c, "", "bold")
call s:hl("SpecialComment", g:color_syntax_c, "", "")
call s:hl("Statement", g:color_syntax_a, "", "bold")

call s:hl("Constant", g:color_syntax_a, "", "")
call s:hl("Define", g:color_syntax_a, "", "")
call s:hl("Exception", g:color_syntax_c, "", "bold")
call s:hl("Include", g:color_syntax_c, "", "bold")
call s:hl("Repeat", g:color_syntax_c, "", "bold")
call s:hl("SpecialChar", g:color_syntax_b, "", "")
call s:hl("StorageClass", g:color_syntax_b, "", "")
call s:hl("Structure", g:color_syntax_a, "", "")
call s:hl("Tag", g:color_syntax_a, "", "")
call s:hl("Typedef", g:color_syntax_b, "", "")

hi! link Macro Define
hi! link PreCondit PreProc



hi! link diffAdded Success
hi! link diffChanged Warn
hi! link diffNewFile Success
hi! link diffOldFile Error
hi! link diffRemoved Error
hi! link DiffAdd Success
hi! link DiffChange Warn
hi! link DiffDelete Error
hi! link DiffText String

hi! link htmlLink String
hi! link htmlArg Type
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

hi! link awkCharClass Identifier
hi! link awkPatterns Type
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

hi! link cIncluded Keyword
hi! link cOperator Operator
hi! link cPreCondit PreCondit

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

hi! link dosiniHeader Keyword
hi! link dosiniLabel Type

hi! link dtBooleanKey Keyword
hi! link dtExecKey Keyword
hi! link dtNumericKey Keyword
hi! link dtTypeKey Keyword
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

hi! link gitconfigVariable Keyword

hi! link goBuiltins Keyword
hi! link goConstants Keyword

hi! link javaDocTags Type
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

hi! link jsonKeyword Keyword

hi! link lessClass Keyword
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hl("markdownHeader", g:color_primary, "", "bold")
call s:hl("markdownUrl", g:color_info, "", "underline")
call s:hl("githubFlavoredMarkdownCode", g:color_error, g:color_bg_alt, "")

hi! link markdownH2 markdownHeader
hi! link markdownH3 markdownHeader
hi! link markdownH4 markdownHeader
hi! link markdownH5 markdownHeader
hi! link markdownH6 markdownHeader

hi! link markdownLinkUrl markdownUrl
hi! link markdownLinkText String

hi! link markdownItalic Bold

hi! link markdownInlineDelimiter Comment
hi! link markdownBoldDelimiter Comment

hi! link markdownLinkTextContainer Comment
hi! link markdownLinkUrlContainer Comment
hi! link markdownItalicDelimiter Comment
hi! link markdownBoldDelimiter Comment
hi! link markdownItemDelimiter Comment

hi! link markdownCodeDelimiter Comment
hi! link markdownHeadingDelimiter Comment
hi! link markdownIdDelimiter Comment
hi! link markdownLinkTextDelimiter Comment
hi! link markdownLinkDelimiter Comment
hi! link markdownListMarker Comment

hi! link markdownBlockquote Comment
hi! link markdownFootnote Comment
hi! link markdownId Comment
hi! link markdownIdDeclaration Comment
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownRule Comment

hi! link @text.todo.unchecked.markdown Bold


hi! link perlPackageDecl Keyword
hi! link phpDocTags Keyword
hi! link phpClasses Keyword
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

hi! link podCmdText Keyword
hi! link podVerbatimLine Type
hi! link podFormat Keyword

hi! link rubySymbol Identifier
hi! link rubyConstant Identifier
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

hi! link sassId Keyword
hi! link sassClass Keyword
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

hi! link vimNotation Keyword
hi! link vimMapRhs Keyword
hi! link vimAugroup Keyword
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

hi! link xmlNamespace Comment
hi! link xmlAttrib htmlArg
hi! link xmlCdataStart Comment
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

hi! link yamlBlockMappingKey Keyword
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword


hi! link GitGutterAdd Success
hi! link GitGutterChange Warn
hi! link GitGutterChangeDelete Warn
hi! link GitGutterDelete Error


" NERDTree
" > scrooloose/nerdtree
call s:hl("NERDTreeCWD", g:color_primary, "NONE", "bold")
hi! link NERDTreeFile String
hi! link NERDTreeDir String
hi! link NERDTreeFlags NERDTreeDir
hi! link NERDTreeExecFile String
hi! link NERDTreeDirSlash Comment
hi! link NERDTreeHelp Comment
hi! link NERDTreeGitStatusModified Comment
hi! link NERDTreeFlags Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

"+--- Languages ---+
" JavaScript
" > javascript
hi! link jsGlobalNodeObjects Keyword
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar
hi! link @constructor.tsx Identifier
hi! link @tag.delimiter.tsx Delimiter
hi! link @type.qualifier.typescript Keyword
hi! link @operator.typescript Keyword
hi! link @constant.builtin.typescript Identifier
hi! link @lsp.typemod.interface.declaration.typescript Identifier
hi! link @type.typescript Identifier


" CSS
hi! link @property.css Keyword

call s:hl("cssDefinition", g:color_syntax_c, "", "bold")
call s:hl("cssAttr", g:color_syntax_a, "", "bold")

hi! link cssProp Identifier
hi! link cssAttributeSelector String
hi! link cssStringQ String
hi! link cssBraces Delimiter
hi! link cssIdentifier cssAttr
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword
hi! link cssMediaProp Special
hi! link cssBoxProp Special
hi! link cssPositioningProp Special
hi! link cssBorderProp Special
hi! link cssBackgroundProp Special
hi! link cssClassName Identifier
hi! link cssUIProp Special

" Dockerfile
hi! link @keyword.dockerfile Keyword
hi! link @function.call.bash Keyword


" Python
hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar
hi! link @boolean.python Identifier
hi! link @constructor.python Type
hi! link @constant.builtin.python Identifier
hi! link @function.builtin.python Identifier

" YAML
hi! link @field.yaml Keyword

" XML
hi! link @tag.xml Identifier
hi! link @tag.delimiter.xml Special

" TODO
hi! link TodoFgNOTE Comment

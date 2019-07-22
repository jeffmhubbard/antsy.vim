scriptencoding utf-8

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="antsy"

" ==========================
" Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:black = { "gui": "#000000", "cterm16": "0", "cterm256": "0" }
let s:dark_red = { "gui": "#c23621", "cterm16": "1", "cterm256": "1" }
let s:dark_green = { "gui": "#25bc24", "cterm16": "2", "cterm256": "2" }
let s:dark_yellow = { "gui": "#adad27", "cterm16": "3", "cterm256": "3" }
let s:dark_blue = { "gui": "#492ee1", "cterm16": "4", "cterm256": "4" }
let s:dark_magenta = { "gui": "#d338d3", "cterm16": "5", "cterm256": "5" }
let s:dark_cyan = { "gui": "#33bbc8", "cterm16": "6", "cterm256": "6" }
let s:grey = { "gui": "#cbcccd", "cterm16": "7", "cterm256": "7" }
let s:dark_grey = { "gui": "#818383", "cterm16": "8", "cterm256": "8" }
let s:red = { "gui": "#fc391f", "cterm16": "9", "cterm256": "9" }
let s:green = { "gui": "#31e722", "cterm16": "10", "cterm256": "10" }
let s:yellow = { "gui": "#eaec23", "cterm16": "11", "cterm256": "11" }
let s:blue = { "gui": "#5833ff", "cterm16": "12", "cterm256": "12" }
let s:magenta = { "gui": "#f935f8", "cterm16": "13", "cterm256": "13" }
let s:cyan = { "gui": "#f935f8", "cterm16": "14", "cterm256": "14" }
let s:white = { "gui": "#33bbc8", "cterm16": "15", "cterm256": "15" }
let s:none = {'gui': 'NONE', 'cterm16': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('Cursor', s:white, s:none, 'bold')
call <sid>hi('ColorColumn', s:none, s:black, 'none')
call <sid>hi('CursorLine', s:none, s:none, 'bold')
call <sid>hi('CursorLineNr', s:grey, s:none, 'bold')
call <sid>hi('Directory', s:blue, s:none, 'none')
call <sid>hi('ErrorMsg', s:red, s:none, 'none')
call <sid>hi('Folded', s:dark_grey, s:none, 'none')
call <sid>hi('IncSearch', s:yellow, s:dark_grey, 'none')
call <sid>hi('LineNr', s:dark_grey, s:none, 'none')
call <sid>hi('SignColumn', s:none, s:none, 'none')
call <sid>hi('MatchParen', s:cyan, s:none, 'bold')
call <sid>hi('ModeMsg', s:black, s:cyan, 'none')
call <sid>hi('MoreMsg', s:black, s:cyan, 'none')
call <sid>hi('NonText', s:dark_grey, s:none, 'none')
call <sid>hi('Normal', s:grey, s:none, 'none')
call <sid>hi('Pmenu', s:grey, s:black, 'none')
call <sid>hi('PmenuSel', s:black, s:blue, 'none')
call <sid>hi('PmenuBar', s:black, s:none, 'none')
call <sid>hi('PmenuThumb', s:none, s:grey, 'none')
call <sid>hi('Question', s:black, s:white, 'none')
call <sid>hi('QuickFixLine', s:black, s:yellow, 'none')
call <sid>hi('Search', s:black, s:yellow, 'none')
call <sid>hi('SpecialKey', s:grey, s:none, 'none')
call <sid>hi('StatusLine', s:white, s:none, 'bold')
call <sid>hi('StatusLineNC', s:dark_grey, s:none, 'none')
call <sid>hi('TabLine', s:dark_grey, s:none, 'none')
call <sid>hi('TabLineFill', s:dark_grey, s:none, 'none')
call <sid>hi('TabLineSel', s:black, s:blue, 'none')
call <sid>hi('Title', s:green, s:none, 'none')
call <sid>hi('VertSplit', s:dark_grey, s:none, 'none')
call <sid>hi('Visual', s:black, s:grey, 'none')
call <sid>hi('VisualNOS', s:black, s:none, 'none')
call <sid>hi('WildMenu', s:black, s:blue, 'none')

" General
call <sid>hi('Boolean', s:yellow, s:none, 'none')
call <sid>hi('Character', s:yellow, s:none, 'none')
call <sid>hi('Comment', s:dark_grey, s:none, 'none')
call <sid>hi('Conditional', s:blue, s:none, 'none')
call <sid>hi('Constant', s:white, s:none, 'bold')
call <sid>hi('Define', s:blue, s:none, 'none')
call <sid>hi('Delimiter', s:blue, s:none, 'none')
call <sid>hi('DiffAdd', s:green, s:none, 'none')
call <sid>hi('DiffChange', s:yellow, s:none, 'none')
call <sid>hi('DiffDelete', s:dark_red, s:none, 'none')
call <sid>hi('DiffText', s:dark_grey, s:none, 'none')
call <sid>hi('Error', s:red, s:none, 'none')
call <sid>hi('Exception', s:blue, s:none, 'none')
call <sid>hi('Float', s:yellow, s:none, 'none')
call <sid>hi('Function', s:magenta, s:none, 'none')
call <sid>hi('Identifier', s:white, s:none, 'bold')
call <sid>hi('Include', s:blue, s:none, 'none')
call <sid>hi('Keyword', s:blue, s:none, 'none')
call <sid>hi('Label', s:blue, s:none, 'none')
call <sid>hi('Marco', s:cyan, s:none, 'none')
call <sid>hi('Number', s:yellow, s:none, 'none')
call <sid>hi('Operator', s:magenta, s:none, 'none')
call <sid>hi('PreCondit', s:dark_blue, s:none, 'none')
call <sid>hi('PreProc', s:blue, s:none, 'none')
call <sid>hi('Repeat', s:blue, s:none, 'none')
call <sid>hi('Special', s:grey, s:none, 'none')
call <sid>hi('SpecialComment', s:yellow, s:dark_grey, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'underline')
call <sid>hi('SpellCap', s:dark_yellow, s:none, 'underline')
call <sid>hi('SpellLocal', s:dark_yellow, s:none, 'underline')
call <sid>hi('SpellRare', s:dark_yellow, s:none, 'underline')
call <sid>hi('Statement', s:blue, s:none, 'none')
call <sid>hi('StorageClass', s:yellow, s:none, 'none')
call <sid>hi('Structure', s:magenta, s:none, 'none')
call <sid>hi('String', s:green, s:none, 'none')
call <sid>hi('Tag', s:yellow, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:dark_yellow, s:dark_grey, 'none')
call <sid>hi('Type', s:white, s:none, 'none')
call <sid>hi('TypeDef', s:yellow, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:red, s:none, 'bold')

" CSS
call <sid>hi('cssAttr', s:magenta, s:none, 'none')
call <sid>hi('cssAttrComma', s:cyan, s:none, 'none')
call <sid>hi('cssAttributeSelector', s:green, s:none, 'none')
call <sid>hi('cssAttrRegion', s:magenta, s:none, 'none')
call <sid>hi('cssBraces', s:blue, s:none, 'none')
call <sid>hi('cssBrowserPrefix', s:dark_cyan, s:none, 'none')
call <sid>hi('cssClassName', s:blue, s:none, 'none')
call <sid>hi('cssClassNameDot', s:blue, s:none, 'none')
call <sid>hi('cssClassSelectorDot', s:blue, s:none, 'none')
call <sid>hi('cssColor', s:white, s:none, 'none')
call <sid>hi('cssCommonAttr', s:magenta, s:none, 'none')
call <sid>hi('cssCustomProperty', s:dark_red, s:none, 'none')
call <sid>hi('cssDefinition', s:blue, s:none, 'none')
call <sid>hi('cssFunction', s:magenta, s:none, 'none')
call <sid>hi('cssFunctionName', s:magenta, s:none, 'none')
call <sid>hi('cssIdentifier', s:white, s:none, 'none')
call <sid>hi('cssImportant', s:red, s:none, 'none')
call <sid>hi('cssInclude', s:blue, s:none, 'none')
call <sid>hi('cssMedia', s:yellow, s:none, 'none')
call <sid>hi('cssMediaBlock', s:yellow, s:none, 'none')
call <sid>hi('cssProp', s:blue, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:blue, s:none, 'none')
call <sid>hi('cssTextProp', s:blue, s:none, 'none')
call <sid>hi('cssAnimationProp', s:blue, s:none, 'none')
call <sid>hi('cssUIProp', s:blue, s:none, 'none')
call <sid>hi('cssTransformProp', s:blue, s:none, 'none')
call <sid>hi('cssTransitionProp', s:blue, s:none, 'none')
call <sid>hi('cssPrintProp', s:blue, s:none, 'none')
call <sid>hi('cssPositioningProp', s:blue, s:none, 'none')
call <sid>hi('cssBoxProp', s:blue, s:none, 'none')
call <sid>hi('cssFontDescriptorProp', s:blue, s:none, 'none')
call <sid>hi('cssFlexibleBoxProp', s:blue, s:none, 'none')
call <sid>hi('cssBorderOutlineProp', s:blue, s:none, 'none')
call <sid>hi('cssBackgroundProp', s:blue, s:none, 'none')
call <sid>hi('cssMarginProp', s:blue, s:none, 'none')
call <sid>hi('cssListProp', s:blue, s:none, 'none')
call <sid>hi('cssTableProp', s:blue, s:none, 'none')
call <sid>hi('cssFontProp', s:blue, s:none, 'none')
call <sid>hi('cssPaddingProp', s:blue, s:none, 'none')
call <sid>hi('cssDimensionProp', s:blue, s:none, 'none')
call <sid>hi('cssRenderProp', s:blue, s:none, 'none')
call <sid>hi('cssColorProp', s:blue, s:none, 'none')
call <sid>hi('cssGeneratedContentProp', s:blue, s:none, 'none')
call <sid>hi('cssPropDefinition', s:blue, s:none, 'none')
call <sid>hi('cssPseudoClass', s:magenta, s:none, 'none')
call <sid>hi('cssPseudoClassId', s:magenta, s:none, 'none')
call <sid>hi('cssPseudoClassLang', s:magenta, s:none, 'none')
call <sid>hi('cssSelectorOperator', s:magenta, s:none, 'none')
call <sid>hi('cssTagName', s:blue, s:none, 'none')
call <sid>hi('cssURL', s:blue, s:none, 'none')
call <sid>hi('cssUnitDecorators', s:magenta, s:none, 'none')
call <sid>hi('cssUnits', s:dark_magenta, s:none, 'none')
call <sid>hi('cssValueLength', s:white, s:none, 'none')
call <sid>hi('cssValueNumber', s:yellow, s:none, 'none')
call <sid>hi('cssValueKeyword', s:green, s:none, 'none')
call <sid>hi('cssVendor', s:magenta, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:blue, s:none, 'none')
call <sid>hi('htmlEndTag', s:grey, s:none, 'none')
call <sid>hi('htmlH1', s:green, s:none, 'bold')
call <sid>hi('htmlLink', s:blue, s:none, 'underline')
call <sid>hi('htmlSpecialChar', s:yellow, s:none, 'bold')
call <sid>hi('htmlSpecialTagName', s:red, s:none, 'none')
call <sid>hi('htmlTag', s:grey, s:none, 'none')
call <sid>hi('htmlTagName', s:magenta, s:none, 'none')
call <sid>hi('htmlTitle', s:white, s:none, 'none')

" INI
call <sid>hi('dosiniComment', s:dark_grey, s:none, 'none')
call <sid>hi('dosiniHeader', s:dark_grey, s:none, 'none')
call <sid>hi('dosiniLabel', s:blue, s:none, 'none')
call <sid>hi('dosiniNumber', s:yellow, s:none, 'none')

" JavaScript
call <sid>hi('javaScript', s:white, s:none, 'none')
call <sid>hi('javaScriptFunction', s:yellow, s:none, 'none')
call <sid>hi('javaScriptIdentifier', s:blue, s:none, 'none')
call <sid>hi('javaScriptMember', s:blue, s:none, 'none')
call <sid>hi('javaScriptNull', s:green, s:none, 'none')
call <sid>hi('javaScriptNumber', s:green, s:none, 'none')
call <sid>hi('javaScriptNumber', s:green, s:none, 'none')
call <sid>hi('javaScriptParens', s:white, s:none, 'none')
call <sid>hi('javaScriptSpecial', s:green, s:none, 'none')
call <sid>hi('javaScriptStringS', s:green, s:none, 'none')
call <sid>hi('javascriptArrayMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptArrayStaticMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptArrowFunc', s:yellow, s:none, 'none')
call <sid>hi('javascriptAsyncFuncKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptAwaitFuncKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptBraces', s:white, s:none, 'none')
call <sid>hi('javascriptBrackets', s:white, s:none, 'none')
call <sid>hi('javascriptCacheMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptClassExtends', s:blue, s:none, 'none')
call <sid>hi('javascriptClassKeyword', s:yellow, s:none, 'none')
call <sid>hi('javascriptClassName', s:blue, s:none, 'none')
call <sid>hi('javascriptClassSuperName', s:blue, s:none, 'none')
call <sid>hi('javascriptDOMElemAttrs', s:blue, s:none, 'none')
call <sid>hi('javascriptDOMEventMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptDOMNodeMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptDOMStorageMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptDateMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptDefault', s:yellow, s:none, 'none')
call <sid>hi('javascriptDocNamedParamType', s:dark_grey, s:none, 'none')
call <sid>hi('javascriptDocNotation', s:dark_grey, s:none, 'none')
call <sid>hi('javascriptDocParamName', s:dark_grey, s:none, 'none')
call <sid>hi('javascriptDocParamType', s:dark_grey, s:none, 'none')
call <sid>hi('javascriptDocTags', s:dark_grey, s:none, 'none')
call <sid>hi('javascriptEndColons', s:white, s:none, 'none')
call <sid>hi('javascriptExport', s:magenta, s:none, 'none')
call <sid>hi('javascriptHeadersMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptIdentifierName', s:blue, s:none, 'none')
call <sid>hi('javascriptImport', s:magenta, s:none, 'none')
call <sid>hi('javascriptLabel', s:blue, s:none, 'none')
call <sid>hi('javascriptLogicSymbols', s:magenta, s:none, 'none')
call <sid>hi('javascriptMathStaticMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptObjectLabel', s:blue, s:none, 'none')
call <sid>hi('javascriptOperator', s:magenta, s:none, 'none')
call <sid>hi('javascriptPropertyName', s:blue, s:none, 'none')
call <sid>hi('javascriptStringMethod', s:blue, s:none, 'none')
call <sid>hi('javascriptVariable', s:white, s:none, 'none')
call <sid>hi('javascriptYield', s:yellow, s:none, 'none')
call <sid>hi('jsArrowFunction', s:yellow, s:none, 'none')
call <sid>hi('jsClassDefinition', s:blue, s:none, 'none')
call <sid>hi('jsClassKeyword', s:yellow, s:none, 'none')
call <sid>hi('jsDecorator', s:green, s:none, 'none')
call <sid>hi('jsDestructuringBlock', s:blue, s:none, 'none')
call <sid>hi('jsExportDefault', s:yellow, s:none, 'none')
call <sid>hi('jsExtendsKeyword', s:blue, s:none, 'none')
call <sid>hi('jsFuncArgs', s:blue, s:none, 'none')
call <sid>hi('jsFuncCall', s:blue, s:none, 'none')
call <sid>hi('jsFunction', s:yellow, s:none, 'none')
call <sid>hi('jsGlobalObjects', s:yellow, s:none, 'none')
call <sid>hi('jsModuleKeyword', s:blue, s:none, 'none')
call <sid>hi('jsNull', s:green, s:none, 'none')
call <sid>hi('jsObjectBraces', s:white, s:none, 'none')
call <sid>hi('jsObjectKey', s:blue, s:none, 'none')
call <sid>hi('jsObjectStringKey', s:green, s:none, 'none')
call <sid>hi('jsRegexpString', s:green, s:none, 'none')
call <sid>hi('jsReturn', s:magenta, s:none, 'none')
call <sid>hi('jsSpecial', s:green, s:none, 'none')
call <sid>hi('jsSuper', s:yellow, s:none, 'none')
call <sid>hi('jsTemplateBraces', s:blue, s:none, 'none')
call <sid>hi('jsTemplateString', s:green, s:none, 'none')
call <sid>hi('jsThis', s:blue, s:none, 'none')
call <sid>hi('jsVariableDef', s:white, s:none, 'none')

" JSON
call <sid>hi('jsonCommentError', s:red, s:none, 'none')
call <sid>hi('jsonKeyword', s:blue, s:none, 'none')
call <sid>hi('jsonBoolean', s:magenta, s:none, 'none')
call <sid>hi('jsonNumber', s:yellow, s:none, 'none')
call <sid>hi('jsonQuote', s:white, s:none, 'none')
call <sid>hi('jsonMissingCommanError', s:red, s:none, 'reverse')
call <sid>hi('jsonNoQuotesError', s:red, s:none, 'reverse')
call <sid>hi('jsonNumError', s:red, s:none, 'reverse')
call <sid>hi('jsonString', s:green, s:none, 'none')
call <sid>hi('jsonStringSQError', s:red, s:none, 'reverse')
call <sid>hi('jsonSemicolorError', s:red, s:none, 'reverse')

" LESS
call <sid>hi('lessVariable', s:white, s:none, 'none')
call <sid>hi('lessAmpersandChar', s:red, s:none, 'none')
call <sid>hi('lessClass', s:magenta, s:none, 'none')

" Markdown
call <sid>hi('markdownCode', s:green, s:none, 'none')
call <sid>hi('markdownCodeBlock', s:green, s:none, 'none')
call <sid>hi('markdownCodeDelimiter', s:green, s:none, 'none')
call <sid>hi('markdownHeadingDelimiter', s:red, s:none, 'none')
call <sid>hi('markdownRule', s:dark_grey, s:none, 'none')
call <sid>hi('markdownHeadingRule', s:dark_grey, s:none, 'none')
call <sid>hi('markdownH1', s:red, s:none, 'none')
call <sid>hi('markdownH2', s:red, s:none, 'none')
call <sid>hi('markdownH3', s:red, s:none, 'none')
call <sid>hi('markdownH4', s:red, s:none, 'none')
call <sid>hi('markdownH5', s:red, s:none, 'none')
call <sid>hi('markdownH6', s:red, s:none, 'none')
call <sid>hi('markdownId', s:magenta, s:none, 'none')
call <sid>hi('markdownIdDelimiter', s:magenta, s:none, 'none')
call <sid>hi('markdownBlockQuote', s:dark_grey, s:none, 'none')
call <sid>hi('markdownItalic', s:magenta, s:none, 'none')
call <sid>hi('markdownBold', s:yellow, s:none, 'none')
call <sid>hi('markdownListMarker', s:red, s:none, 'none')
call <sid>hi('markdownOrderedListMarker', s:red, s:none, 'none')
call <sid>hi('markdownIdDeclaration', s:blue, s:none, 'none')
call <sid>hi('markdownLinkText', s:blue, s:none, 'none')
call <sid>hi('markdownLinkDelimiter', s:white, s:none, 'none')
call <sid>hi('markdownUrl', s:blue, s:none, 'none')

" Ruby
call <sid>hi('rubyBlockParameter', s:white, s:none, 'bold')
call <sid>hi('rubyBlockParameterList', s:white, s:none, 'bold')
call <sid>hi('rubyClass', s:magenta, s:none, 'none')
call <sid>hi('rubyClassVariable', s:white, s:none, 'none')
call <sid>hi('rubyConstant', s:white, s:none, 'bold')
call <sid>hi('rubyControl', s:blue, s:none, 'none')
call <sid>hi('rubyEscape', s:green, s:none, 'none')
call <sid>hi('rubyException', s:blue, s:none, 'none')
call <sid>hi('rubyFunction', s:magenta, s:none, 'none')
call <sid>hi('rubyGlobalVariable', s:white, s:none, 'none')
call <sid>hi('rubyInclude', s:blue, s:none, 'none')
call <sid>hi('rubyInstanceVariable', s:white, s:none, 'none')
call <sid>hi('rubyInterpolationDelimiter', s:none, s:none, 'none')
call <sid>hi('rubyOperator', s:magenta, s:none, 'none')
call <sid>hi('rubyPseudoVariable', s:white, s:none, 'none')
call <sid>hi('rubyRegexp', s:yellow, s:none, 'none')
call <sid>hi('rubyRegexpDelimiter', s:green, s:none, 'none')
call <sid>hi('rubyStringDelimiter', s:green, s:none, 'none')
call <sid>hi('rubySymbol', s:green, s:none, 'none')

" XML
call <sid>hi('xmlAttrib', s:blue, s:none, 'none')
call <sid>hi('xmlEndTag', s:grey, s:none, 'none')
call <sid>hi('xmlTag', s:grey, s:none, 'none')
call <sid>hi('xmlTagName', s:magenta, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:cyan, s:none, 'none')
call <sid>hi('yamlAnchor', s:blue, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:green, s:none, 'none')
call <sid>hi('yamlKey', s:yellow, s:none, 'none')

" git
call <sid>hi('gitcommitComment', s:dark_grey, s:none, 'none')
call <sid>hi('gitcommitUnmerged', s:cyan, s:none, 'none')
call <sid>hi('gitcommitBranch', s:red, s:none, 'none')
call <sid>hi('gitcommitOnBranch', s:white, s:none, 'none')
call <sid>hi('gitcommitDiscardedType', s:dark_red, s:none, 'none')
call <sid>hi('gitcommitSelectedType', s:green, s:none, 'none')
call <sid>hi('gitcommitHeader', s:white, s:none, 'underline')
call <sid>hi('gitcommitUntrackedFile', s:yellow, s:none, 'none')
call <sid>hi('gitcommitDiscardedFile', s:dark_red, s:none, 'none')
call <sid>hi('gitcommitSelectedFile', s:dark_green, s:none, 'none')
call <sid>hi('gitcommitUnmergedFile', s:cyan, s:none, 'none')
call <sid>hi('gitcommitFile', s:white, s:none, 'none')
call <sid>hi('gitcommitSummary', s:dark_cyan, s:none, 'none')
call <sid>hi('gitcommitOverflow', s:red, s:none, 'none')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" incsearch.vim
call <sid>hi('IncSearchMatch', s:blue, s:yellow, 'none')
call <sid>hi('IncSearchMatchReverse', s:dark_blue, s:dark_yellow, 'none')
call <sid>hi('IncSearchOnCursor', s:yellow, s:dark_grey, 'none')
call <sid>hi('IncSearchCursor', s:black, s:cyan, 'none')

" mhinz/vim-signify
call <sid>hi('SignifySignAdd', s:green, s:none, 'none')
call <sid>hi('SignifySignChange', s:yellow, s:none, 'none')
call <sid>hi('SignifySignDelete', s:red, s:none, 'none')

" airblade/vim-gitgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete

" w0rp/ale
call <sid>hi('ALEErrorSign', s:red, s:none, 'none')
call <sid>hi('ALEWarningSign', s:yellow, s:none, 'none')

" tpope/vim-fugitive
call <sid>hi("diffAdded", s:green, s:none, 'none')
call <sid>hi("diffRemoved", s:red, s:none, 'none')

set background=dark

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
call <sid>hi('IncSearch', s:cyan, s:yellow, 'none')
call <sid>hi('LineNr', s:dark_grey, s:none, 'none')
call <sid>hi('SignColumn', s:none, s:none, 'none')
call <sid>hi('MatchParen', s:cyan, s:none, 'bold')
call <sid>hi('ModeMsg', s:white, s:none, 'none')
call <sid>hi('MoreMsg', s:cyan, s:none, 'bold')
call <sid>hi('NonText', s:dark_grey, s:none, 'none')
call <sid>hi('Normal', s:grey, s:none, 'none')
call <sid>hi('Pmenu', s:grey, s:black, 'none')
call <sid>hi('PmenuSel', s:black, s:blue, 'none')
call <sid>hi('PmenuBar', s:black, s:none, 'none')
call <sid>hi('PmenuThumb', s:none, s:grey, 'none')
call <sid>hi('Question', s:cyan, s:none, 'bold')
call <sid>hi('QuickFixLine', s:black, s:cyan, 'none')
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
call <sid>hi('WildMenu', s:black, s:white, 'none')

" General
call <sid>hi('Boolean', s:yellow, s:none, 'none')
call <sid>hi('Character', s:yellow, s:none, 'none')
call <sid>hi('Comment', s:dark_grey, s:none, 'none')
call <sid>hi('Conditional', s:magenta, s:none, 'none')
call <sid>hi('Constant', s:blue, s:none, 'none')
call <sid>hi('Define', s:blue, s:none, 'none')
call <sid>hi('Delimiter', s:grey, s:none, 'none')
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
call <sid>hi('Structure', s:dark_green, s:none, 'none')
call <sid>hi('String', s:green, s:none, 'none')
call <sid>hi('Tag', s:yellow, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:white, s:black, 'reverse')
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
call <sid>hi('cssValueKeyword', s:blue, s:none, 'none')
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

" Python
call <sid>hi('pythonAsync', s:red, s:none, 'none')
call <sid>hi('pythonAtrribute', s:dark_blue, s:none, 'none')
call <sid>hi('pythonBuiltin', s:magenta, s:none, 'none')
call <sid>hi('pythonComment', s:dark_grey, s:none, 'none')
call <sid>hi('pythonConditional', s:blue, s:none, 'none')
call <sid>hi('pythonDecorator', s:dark_cyan, s:none, 'none')
call <sid>hi('pythonDecoratorName', s:dark_cyan, s:none, 'none')
call <sid>hi('pythonDoctest', s:blue, s:none, 'none')
call <sid>hi('pythonDoctestValue', s:yellow, s:none, 'none')
call <sid>hi('pythonEscape', s:dark_yellow, s:none, 'none')
call <sid>hi('pythonException', s:blue, s:none, 'none')
call <sid>hi('pythonExceptions', s:red, s:none, 'none')
call <sid>hi('pythonFunction', s:magenta, s:none, 'none')
call <sid>hi('pythonInclude', s:blue, s:none, 'none')
call <sid>hi('pythonNumber', s:yellow, s:none, 'none')
call <sid>hi('pythonOperator', s:magenta, s:none, 'none')
call <sid>hi('pythonQuotes', s:green, s:none, 'none')
call <sid>hi('pythonRawString', s:white, s:none, 'bold')
call <sid>hi('pythonRepeat', s:blue, s:none, 'none')
call <sid>hi('pythonSpaceError', s:red, s:none, 'none')
call <sid>hi('pythonStatement', s:blue, s:none, 'none')
call <sid>hi('pythonString', s:green, s:none, 'none')
call <sid>hi('pythonTodo', s:white, s:black, 'reverse')
call <sid>hi('pythonTripleQuotes', s:green, s:none, 'none')

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
call <sid>hi('gitcommitBranch', s:red, s:none, 'underline')
call <sid>hi('gitcommitOnBranch', s:white, s:none, 'none')
call <sid>hi('gitcommitDiscardedType', s:dark_red, s:none, 'none')
call <sid>hi('gitcommitSelectedType', s:green, s:none, 'none')
call <sid>hi('gitcommitHeader', s:white, s:none, 'none')
call <sid>hi('gitcommitUntrackedFile', s:yellow, s:none, 'none')
call <sid>hi('gitcommitDiscardedFile', s:dark_red, s:none, 'none')
call <sid>hi('gitcommitSelectedFile', s:dark_green, s:none, 'none')
call <sid>hi('gitcommitUnmergedFile', s:cyan, s:none, 'none')
call <sid>hi('gitcommitFile', s:white, s:none, 'none')
call <sid>hi('gitcommitSummary', s:white, s:none, 'none')
call <sid>hi('gitcommitOverflow', s:red, s:none, 'none')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" tpope/vim-fugitive
call <sid>hi("diffAdded", s:green, s:none, 'none')
call <sid>hi("diffRemoved", s:dark_red, s:none, 'none')

" mhinz/vim-signify
call <sid>hi('SignifySignAdd', s:green, s:none, 'none')
call <sid>hi('SignifySignChange', s:yellow, s:none, 'none')
call <sid>hi('SignifySignDelete', s:red, s:none, 'none')

" airblade/vim-gitgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete

" incsearch.vim
call <sid>hi('IncSearchMatch', s:black, s:yellow, 'none')
call <sid>hi('IncSearchMatchReverse', s:dark_grey, s:yellow, 'none')
call <sid>hi('IncSearchOnCursor', s:dark_cyan, s:black, 'reverse')
call <sid>hi('IncSearchCursor', s:cyan, s:black, 'reverse')

" w0rp/ale
call <sid>hi('ALEErrorSign', s:red, s:none, 'none')
call <sid>hi('ALEWarningSign', s:yellow, s:none, 'none')

set background=dark


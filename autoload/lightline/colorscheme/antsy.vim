" ==========================
" Colors
" ==========================

let s:bold = get(g:, 'lightline#antsy#disable_bold_style', 0) ? '' : 'bold'

let s:black         = [ '#000000', 0 ]
let s:dark_red      = [ '#cd0000', 1 ]
let s:dark_green    = [ '#00cd00', 2 ]
let s:dark_yellow   = [ '#adad27', 3 ]
let s:dark_blue     = [ '#492ee1', 4 ]
let s:dark_magenta  = [ '#d338d3', 5 ]
let s:dark_cyan     = [ '#33bbc8', 6 ]
let s:grey          = [ '#cbcccd', 7 ]
let s:dark_grey     = [ '#818383', 8 ]
let s:red           = [ '#fc391f', 9 ]
let s:green         = [ '#31e722', 10 ]
let s:yellow        = [ '#eaec23', 11 ]
let s:blue          = [ '#5833ff', 12 ]
let s:magenta       = [ '#f935f8', 13 ]
let s:cyan          = [ '#14f0f0', 14 ]
let s:white         = [ '#e9ebeb', 15 ]
let s:transparent   = [ 'NONE', 'NONE' ]


" ==========================
" Aliases
" ==========================

let s:comment_grey  = s:dark_grey
let s:gutter_grey   = s:dark_grey
let s:cursor_grey   = s:dark_grey
let s:visual_grey   = s:dark_grey
let s:menu_grey     = s:dark_grey
let s:special_grey  = s:grey
let s:vertsplit     = s:dark_grey

let s:normal_color  = s:cyan
let s:insert_color  = s:white
let s:replace_color = s:yellow
let s:visual_color  = s:grey
let s:active_bg     = s:transparent
let s:inactive_bg   = s:transparent


" ==========================
" Statusbar
" ==========================

" left: mode, file
" right: position, percent, filetype, branch, ale
" middle:

let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'inactive': {}}

let s:p.normal.left     = [ [ s:black, s:normal_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.normal.right    = [ [ s:cyan, s:active_bg ], [ s:white, s:active_bg, s:bold ], [ s:dark_grey, s:active_bg, s:bold ], [ s:magenta, s:active_bg, s:bold ] ]
let s:p.normal.middle   = [ [ s:special_grey, s:active_bg, s:bold ] ]

let s:p.insert.left     = [ [ s:black, s:insert_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.insert.right    = [ [ s:cyan, s:active_bg, s:bold ], [ s:white, s:active_bg, s:bold ], [ s:dark_grey, s:active_bg, s:bold ], [ s:magenta, s:active_bg, s:bold ] ]
let s:p.insert.middle   = [ [ s:special_grey, s:active_bg, s:bold ] ]

let s:p.replace.left    = [ [ s:black, s:replace_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.replace.right   = [ [ s:cyan, s:active_bg, s:bold ], [ s:white, s:active_bg, s:bold ], [ s:dark_grey, s:active_bg, s:bold ], [ s:magenta, s:active_bg, s:bold ] ]
let s:p.replace.middle  = [ [ s:special_grey, s:active_bg, s:bold ] ]

let s:p.visual.left     = [ [ s:black, s:visual_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.visual.right    = [ [ s:cyan, s:active_bg, s:bold ], [ s:white, s:active_bg, s:bold ], [ s:dark_grey, s:active_bg, s:bold ], [ s:magenta, s:active_bg, s:bold ] ]
let s:p.visual.middle   = [ [ s:special_grey, s:active_bg, s:bold ] ]

let s:p.inactive.left   = [ [ s:dark_grey, s:inactive_bg ] ]
let s:p.inactive.right  = [ [ s:dark_grey, s:inactive_bg ], [ s:dark_grey, s:inactive_bg ], [ s:dark_grey, s:inactive_bg ], [ s:dark_grey, s:inactive_bg ] ]
let s:p.inactive.middle = [ [ s:dark_grey, s:inactive_bg ] ]

let s:p.normal.ok       = [ [ s:green, s:active_bg ] ]
let s:p.normal.error    = [ [ s:red, s:active_bg ] ]
let s:p.normal.warning  = [ [ s:yellow, s:active_bg ] ]

let g:lightline#colorscheme#antsy#palette = lightline#colorscheme#flatten(s:p)


" vim: set ft=vim:

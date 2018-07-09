" autoload/lightline/colorscheme/antsy.vim

let s:bold = get(g:, 'lightline#antsy#disable_bold_style', 0) ? '' : 'bold'

let s:black         = [ '#000000', 0 ]
let s:dark_grey     = [ '#7f7f7f', 8 ]
let s:dark_red      = [ '#cd0000', 1 ]
let s:red           = [ '#ff0000', 9 ]
let s:dark_green    = [ '#00cd00', 2 ]
let s:green         = [ '#00ff00', 10 ]
let s:dark_yellow   = [ '#cdcd00', 3 ]
let s:yellow        = [ '#ffff00', 11 ]
let s:dark_blue     = [ '#0000ee', 4 ]
let s:blue          = [ '#5c5cff', 12 ]
let s:dark_magenta  = [ '#cd00cd', 5 ]
let s:magenta       = [ '#ff00ff', 13 ]
let s:dark_cyan     = [ '#00cdcd', 6 ]
let s:cyan          = [ '#00ffff', 14 ]
let s:grey          = [ '#e5e5e5', 7 ]
let s:white         = [ '#ffffff', 15 ]

let s:comment_grey  = s:dark_grey
let s:gutter_grey   = s:dark_grey
let s:cursor_grey   = s:dark_grey
let s:visual_grey   = s:dark_grey
let s:menu_grey     = s:dark_grey
let s:special_grey  = s:dark_grey
let s:vertsplit     = s:dark_grey

let s:tab_color     = s:blue
let s:normal_color  = s:dark_grey
let s:insert_color  = s:white
let s:replace_color = s:yellow
let s:visual_color  = s:cyan
let s:active_bg     = s:black
let s:inactive_bg   = s:black

let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'inactive': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:black, s:tab_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.normal.right    = [ [ s:white, s:active_bg, s:bold ], [ s:cyan, s:active_bg, s:bold ] ]
let s:p.normal.middle   = [ [ s:magenta, s:active_bg, s:bold ] ]

let s:p.insert.left     = [ [ s:black, s:insert_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.insert.right    = [ [ s:white, s:active_bg, s:bold ], [ s:cyan, s:active_bg, s:bold ] ]
let s:p.insert.middle   = [ [ s:magenta, s:active_bg, s:bold ] ]

let s:p.replace.left    = [ [ s:black, s:replace_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.replace.right   = [ [ s:white, s:active_bg, s:bold ], [ s:cyan, s:active_bg, s:bold ] ]
let s:p.replace.middle  = [ [ s:magenta, s:active_bg, s:bold ] ]

let s:p.visual.left     = [ [ s:black, s:visual_color ], [ s:white, s:active_bg, s:bold ] ]
let s:p.visual.right    = [ [ s:white, s:active_bg, s:bold ], [ s:cyan, s:active_bg, s:bold ] ]
let s:p.visual.middle   = [ [ s:magenta, s:active_bg, s:bold ] ]

let s:p.inactive.left   = [ [ s:dark_grey, s:inactive_bg ] ]
let s:p.inactive.right  = [ [ s:dark_grey, s:inactive_bg ], [ s:dark_cyan, s:inactive_bg ] ]
let s:p.inactive.middle = [ [ s:dark_magenta, s:inactive_bg ] ]

let s:p.normal.error    = [ [ s:black, s:red ] ]
let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

let g:lightline#colorscheme#antsy#palette = lightline#colorscheme#flatten(s:p)

" vim: set ft=vim:

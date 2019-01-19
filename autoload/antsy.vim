" autoload/antsy.vim

let s:overrides = get(g:, "antsy_color_overrides", {})

let s:colors = {
      \ "black": get(s:overrides, "black", { "gui": "#000000", "cterm": "0", "cterm16": "0" }),
      \ "dark_grey": get(s:overrides, "dark_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#c23621", "cterm": "1", "cterm16": "1" }),
      \ "red": get(s:overrides, "red", { "gui": "#fc391f", "cterm": "9", "cterm16": "9" }),
      \ "dark_green": get(s:overrides, "dark_green", { "gui": "#25bc24", "cterm": "2", "cterm16": "2" }),
      \ "green": get(s:overrides, "green", { "gui": "#31e722", "cterm": "10", "cterm16": "10" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#adad27", "cterm": "3", "cterm16": "3" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#eaec23", "cterm": "11", "cterm16": "11" }),
      \ "dark_blue": get(s:overrides, "dark_blue", { "gui": "#492ee1", "cterm": "4", "cterm16": "4" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#5833ff", "cterm": "12", "cterm16": "12" }),
      \ "dark_magenta": get(s:overrides, "dark_magenta", { "gui": "#d338d3", "cterm": "5", "cterm16": "5" }),
      \ "magenta": get(s:overrides, "magenta", { "gui": "#f935f8", "cterm": "13", "cterm16": "13" }),
      \ "dark_cyan": get(s:overrides, "dark_cyan", { "gui": "#33bbc8", "cterm": "6", "cterm16": "6" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#14f0f0", "cterm": "14", "cterm16": "14" }),
      \ "grey": get(s:overrides, "grey", { "gui": "#cbcccd", "cterm": "7", "cterm16": "7" }),
      \ "white": get(s:overrides, "white", { "gui": "#e9ebeb", "cterm": "15", "cterm16": "15" }),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "cursor_line_grey": get(s:overrides, "cursor_line_grey", { "gui": "NONE", "cterm": "NONE", "cterm16": "NONE" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#cbcccd", "cterm": "7", "cterm16": "7" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#818383", "cterm": "8", "cterm16": "8" }),
      \}

function! antsy#GetColors()
  return s:colors
endfunction

" vim: set ft=vim:

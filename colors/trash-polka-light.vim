if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set termguicolors

let g:colors_name = "trash-polka-light"
set background=light

let s:color0 = "#3B4252"
let s:color1 = "#CB5C67"
let s:color2 = "#A3BE8C"
let s:color3 = "#EBCEBC"
let s:color4 = "#5697D8"
let s:color5 = "#B48EAD"
let s:color6 = "#88C0D0"
let s:color7 = "#878A8F"

let s:color8 = "#4C566A"
let s:color9 = "#BF616A"
let s:color10 = "#A3BE8C"
let s:color11 = "#EBCB8B"
let s:color12 = "#81A1C1"
let s:color13 = "#B48EAD"
let s:color14 = "#8FBCBB"
let s:color15 = "#ECEFF4"


let g:color_bg          = "#FFFFFF"
let g:color_bg_alt      = s:color15
let g:color_bg_accent   = s:color4

let g:color_primary     = s:color8
let g:color_secondary   = s:color7
let g:color_accent      = s:color9

let g:color_syntax_a    = s:color8
let g:color_syntax_b    = s:color4
let g:color_syntax_c    = s:color1
let g:color_syntax_d    = s:color7

let g:color_error       = s:color9
let g:color_success     = s:color12
let g:color_warn        = s:color11
let g:color_info        = s:color6

let g:color_gdelete     = s:color1
let g:color_gadd        = s:color2
let g:color_gchange     = s:color3

let path = expand('<sfile>:p:h')
exec 'source' path . '/highlights.vim'

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "trash-polka"
set background=dark

let s:color0 = "#161520"
let s:color1 = "#BF4C73"
let s:color2 = "#a3be8b"
let s:color3 = "#eacb8a"
let s:color4 = "#81a1c1"
let s:color5 = "#b48dac"
let s:color6 = "#88c0d0"
let s:color7 = "#e5e9f0"

let s:color8 = "#616e86"
let s:color9 = "#bf6069"
let s:color10 = "#a3be8b"
let s:color11 = "#eacb8a"
let s:color12 = "#81a1c1"
let s:color13 = "#b48dac"
let s:color14 = "#8fbcbb"
let s:color15 = "#eceef4"


let g:color_bg          = "#2e3340"
let g:color_bg_alt      = s:color0
let g:color_bg_accent   = s:color4

let g:color_primary     = s:color9
let g:color_secondary   = s:color8
let g:color_accent      = s:color9

let g:color_syntax_a    = s:color7
let g:color_syntax_b    = s:color4
let g:color_syntax_c    = s:color9
let g:color_syntax_d    = s:color8

let g:color_success     = s:color2
let g:color_warn        = s:color3
let g:color_info        = s:color12
let g:color_error       = s:color9

let g:color_gadd        = s:color6
let g:color_gchange     = s:color3
let g:color_gdelete     = s:color1

let path = expand('<sfile>:p:h')
exec 'source' path . '/highlights.vim'

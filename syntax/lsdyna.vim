"-------------------------------------BOF---------------------------------------
"
" Vim syntax file
"
" Language:     Ls-Dyna FE solver input file
" Maintainer:   Bartosz Gradzik (bartosz.gradzik@hotmail.com)
" Contribution: Jakub Pajerski
" Last Change:  1st of January 2014
"
"-------------------------------------------------------------------------------

" if syntax is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "lsdyna"

"-------------------------------------------------------------------------------
"    Ls-Dyna comment
"-------------------------------------------------------------------------------

syntax match LsDynaComment '^[$#].*$'

hi def link LsDynaComment Comment

"-------------------------------------------------------------------------------
"    Ls-Dyna keywords
"-------------------------------------------------------------------------------

syntax match LsDynaKeyword '^*[a-zA-Z].*$' contains=LsDynaKeywordOption,LsDynaKeywordOption1,LsDynaKeywordOption2
syntax match LsDynaKeywordOption '\(^*[a-zA-Z]*\)\@<=\(\(_[A-Z]*_\)\|\(_[A-Z]*\s*$\)\)' contained
syntax match LsDynaKeywordOption1 '\(\(^*[A-Za-z]*_[A-Za-z]*_\)\@<=[A-Za-z0-9]*[^_]\)' contained
syntax match LsDynaKeywordOption2 '\(\(^*[A-Za-z]*_[A-Za-z]*_[A-Za-z0-9]*\)\@<=_.*$\)' contained
syntax match LsDynaTitle '^[a-zA-Z].*$'

hi def link LsDynaKeyword Statement
hi def link LsDynaKeywordOption Type
hi def link LsDynaKeywordOption1 x166_DarkOrange3 
hi def link LsDynaKeywordOption2 x164_Magenta3 
hi def link LsDynaTitle x051_Cyan1

"-------------------------------------------------------------------------------
"    Ls-Dyna data line
"-------------------------------------------------------------------------------

syntax match LsDyna2Col  '\%11c.\{10}'
syntax match LsDyna4Col  '\%31c.\{10}'
syntax match LsDyna6Col  '\%51c.\{10}'
syntax match LsDyna8Col  '\%71c.\{10}'
syntax match LsDyna10Col '\%91c.\{10}'

hi def link LsDyna2Col x225_Thistle1
hi def link LsDyna4Col x225_Thistle1
hi def link LsDyna6Col x225_Thistle1
hi def link LsDyna8Col x225_Thistle1
hi def link LsDyna10Col x225_Thistle1

"-------------------------------------EOF---------------------------------------

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

syntax match LsDynaComment '^#.*$'

hi def link LsDynaComment Comment

"-------------------------------------------------------------------------------
"    Ls-Dyna keywords
"-------------------------------------------------------------------------------

syntax match LsDynaKeyword '^/[A-Z_0-9]*.*$' contains=LsDynaKeywordOption,LsDynaKeywordOption_1,LsDynaKeywordOption_2 display

"syntax match LsDynaKeywordOption '\(^/[A-Z0-9]*\)\@<=/[A-Z_0-9]*\(/\|\(/[A-Z0-9]*.*$\)\)' contained
syntax match LsDynaKeywordOption '\(^/[A-Z0-9]*\)\@<=\(\(/[A-Z_0-9]*/\)\|\(/[A-Z_]*\s*$\)\)' contained
syntax match LsDynaKeywordOption_1 '\(\(^/[A-Z0-9]*/[A-Z_]*/\)\@<=.*$\)\|\(\(^/[A-Z0-9]*/\)\@<=.*$\)' contained
"syntax match LsDynaKeywordOption_2 '\(^/.*\)\@<=/.*$' contained
syntax match LsDynaTitle '^[a-zA-Z].*$'

hi def link LsDynaKeyword Statement
hi def link LsDynaKeywordOption Type
hi def link LsDynaKeywordOption_1 Constant
hi def link LsDynaKeywordOption_2 Constant
hi def link LsDynaTitle Todo 
"hi def link LsDynaTitle Identifier

"-------------------------------------------------------------------------------
"    Ls-Dyna data line
"-------------------------------------------------------------------------------

syntax match LsDyna2Col  '\%11c.\{10}'
syntax match LsDyna4Col  '\%31c.\{10}'
syntax match LsDyna6Col  '\%51c.\{10}'
syntax match LsDyna8Col  '\%71c.\{10}'
syntax match LsDyna10Col '\%91c.\{10}'

hi def link LsDyna2Col Special
hi def link LsDyna4Col Special
hi def link LsDyna6Col Special
hi def link LsDyna8Col Special
hi def link LsDyna10Col Special

"-------------------------------------EOF---------------------------------------

"-------------------------------------BOF---------------------------------------
"
" Vim syntax file
"
" Language:     PAM-CRASH FE solver input file
" Maintainer:   vijaykiran Myla (vijaykiranmyla@gmail.com)
" Contribution: xxxxxxxxxxx
" Last Change:  1st of January 2014
"
"-------------------------------------------------------------------------------

" if syntax is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "pam"

"-------------------------------------------------------------------------------
"    Pam-Crash comment
"-------------------------------------------------------------------------------

syntax match PamComment '^[$#].*$'

hi def link PamComment Comment

"-------------------------------------------------------------------------------
"    Pam-Crash keywords
"-------------------------------------------------------------------------------

syntax match PamKeyword '^[a-zA-Z].*/' contains=PamKeywordOption
syntax match PamKeywordOption '_.*$' contained
syntax match PamTitle '^NAME.*$' contains=PamName
syntax match PamName '\(^NAME\)\@<=\(.*$\)' contained
syntax match PamEND '^END_.*$'

syntax match PamSelEND '^\s\+END$'
syntax match PamSelNod '^\s\+\(NOD\)'
syntax match PamSelEle '^\s\+\(ELE\)'
syntax match PamSelPart '^\s\+\(PART\)'
syntax match PamSelGroup '^\s\+\(GRP\)'


syntax match PamSelString '\(^\s\+\(GRP\s\+\)\)\@<=\(\'.*\'.*$\)'
syntax match PamGroupName '\(^GROUP\s\/\s*\)\@<=\(\'.*\'.*$\)'


hi def link PamKeyword Statement
hi def link PamKeywordOption Type
hi def link PamTitle Identifier
hi def link PamEND Statement
hi def link PamName Directory

hi def link PamSelEND Constant
hi def link PamSelNod SpecialKey
hi def link PamSelEle x208_DarkOrange
hi def link PamSelPart Special
hi def link PamSelGroup x045_Turquoise2

hi def link PamSelString x214_Orange1

hi def link PamGroupName Directory
 

"-------------------------------------------------------------------------------
"    Pam-Crash data line
"-------------------------------------------------------------------------------


"syntax match PamNodeline  '^NODE  / '
"syntax match PamNode2Col  '\(^NODE\s\s/\s\)\@<=\%9c.\{8}'
"syntax match PamNode4Col  '\(^NODE\)\@<=\33c.\{16}'


"syntax match Pam2Col  '\(^[^A-Z].*\)\@<=\%11c.\{10}'
"syntax match Pam4Col  '\(^[^A-Z].*\)\@<=\%31c.\{10}'
"syntax match Pam6Col  '\(^[^A-Z].*\)\@<=\%51c.\{10}'
"syntax match Pam8Col  '\(^[^A-Z].*\)\@<=\%71c.\{10}'
"syntax match Pam10Col '\(^[^A-Z].*\)\@<=\%91c.\{10}'


"hi def link PamNodeline Statement
"hi def link PamNode2Col Underlined
"hi def link PamNode4Col Underlined


"hi def link Pam2Col Underlined
"hi def link Pam4Col Underlined
"hi def link Pam6Col Underlined
"hi def link Pam8Col Underlined
"hi def link Pam10Col Underlined

"-------------------------------------EOF---------------------------------------

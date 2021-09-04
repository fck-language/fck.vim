" Vim syntax file
" Language        : fck
" Maintainer      : Rosie Bartlett <rosiegbartlett@gmail.com>
" Latest revision : Sep 04 2021
" For bugs, releases, and license, please go to https://github.com/fck-language/fck.vim

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword fckTodo contained TODO FIXME XXX NOTE
syn region fckComment start="#" end = "#" fold
syn match fckComment "##.*$" contains=fckTODO
syn match fckLanguage "#!.\{2}$"
syn keyword fckRepeat iterate while
syn keyword fckConditional if else elif case option default
syn keyword fckRepeat in
syn match fckLoopIdentifier "@\w+"

" Highlighting
hi def link fckTODO              Todo
hi def link fckComment           Comment
hi def link fckLanguage          Special
hi def link fckRepeat            Conditional
hi def link fckConditional       Conditional
hi def link fckLoopIdentifier    Label

let b:current_syntax = "fck"


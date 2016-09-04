" Plain text filetype plugin
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2016-09-04

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setl wrap
setl fdm=marker cms=

" vim:et:ts=2:sw=2:fdm=marker:

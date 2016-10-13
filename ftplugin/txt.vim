" Plain text filetype plugin
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2016-10-13

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

set nonumber
set wrap
set fdm=marker cms=

nmap <Leader><Space> A OK<ESC>

" vim:et:ts=2:sw=2:fdm=marker:

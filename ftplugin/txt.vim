" Plain text filetype plugin
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2017-07-31

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

if line('$') >= 1000
  set nonumber
endif
set wrap
set fdm=marker cms=

nmap <Leader><Space> A OK<ESC>

" vim:et:ts=2:sw=2:fdm=marker:

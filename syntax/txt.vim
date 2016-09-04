" Plain text syntax file
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2016-09-04

scriptencoding utf-8

if exists("b:current_syntax")
  finish
endif

" Optional reuse html syntax
":so $VIMRUNTIME/syntax/html.vim

syn case match

syn keyword txtTodo   TODO FIXME NOTE DEBUG COMMENT NOTICE
syn keyword txtError  ERROR BUG CAUTION WARNING FATAL HOT IMPORTANT
syn keyword txtDone   DONE OK

" ASCII Punctuation Marks
syn match txtEPM '[~\-_+*<>\[\]{}=|#@$%&\\/:&\^\.,!?'"]'
" CJK Punctuation Marks
syn match txtCPM '[，。；：！？、《》【】“”‘’（）『』「」〖〗﹝﹞〔〕〈〉…￥·■◆▲●★□◇△○☆＄‰￥℃※±⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛①②③④⑤⑥⑦⑧⑨⑩㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩→←↑↓§№◎ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫ≈≡≠＝≤≥＜＞≮≯∷±＋－×÷／∫∮∝∞∧∨∑∏∪∩∈∵∴⊥∥∠⌒⊙≌∽√°¤￠〇]'

syn match txtNumber '\d\+\(\.\d\+\)\='
syn match txtLink '\<\w\+://\(\w\|[-+&=,?:./*%#]\)\+'

syn cluster txtTagsContains contains=txtNumber,txtEPM,txtCPM,txtLink
syn match txtTags '<[^>]*>'   contains=@txtTagsContains
syn match txtTags '{[^}]*}'   contains=@txtTagsContains
syn match txtTags '\[[^]]*\]' contains=@txtTagsContains
syn match txtTags '【[^】]*】' contains=@txtTagsContains
syn match txtTags '〖[^〗]*〗' contains=@txtTagsContains

syn cluster txtCommentContains contains=txtTodo,txtError,txtDone,txtLink
syn match  txtComment '\(^\| \)\@<=#.*$'      contains=@txtCommentContains
syn match  txtComment '\(^\| \)\@<=\/\/.*$'   contains=@txtCommentContains
syn region txtComment start='\/\*' end='\*\/' contains=@txtCommentContains

syn cluster txtQuotedContains contains=txtNumber,txtEPM,txtCPM,txtLink,txtQuoted,txtBracketed
syn match  txtQuoted    '"[^"]\+"'hs=s+1,he=e-1                      contains=@txtQuotedContains
syn match  txtQuoted    "\(\w\)\@<!'[^']\+'"hs=s+1,he=e-1            contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[《]'  end='[》]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[“]'  end='[”]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[『]'  end='[』]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[﹝]'  end='[﹞]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[〔]'  end='[〕]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[〈]'  end='[〉]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[「]'  end='[」]'  contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[‘]'  end='[’]'  contains=@txtQuotedContains
syn region txtBracketed matchgroup=txtCPM  start='[(（]' end='[）)]' contains=@txtQuotedContains

syn match txtList '^\s*\zs[-+*]\ze [^ ]'
syn match txtList '^\s*\zs[0-9A-Za-z]\+\.\ze [^ ]'
syn match txtList '^\s*\zs(\?[0-9A-Za-z]\+)\ze [^ ]'

hi link txtTodo       Todo
hi link txtError      Error
hi def  txtDone       ctermbg=Blue ctermfg=Black guibg=#6666FF guifg=Black
hi link txtEPM        Special
hi link txtCPM        Constant
hi link txtNumber     Constant
hi link txtLink       Underlined
hi link txtTags       Identifier
hi link txtComment    Comment
hi link txtQuoted     Statement
hi link txtBracketed  Special
hi link txtList       Statement

let b:current_syntax = 'txt'
" vim:et:ts=2:sw=2:fdm=marker:

# txt.vim

Make Vim more usable for viewing and editing plain text

> Version: 0.1

#### Pros:
* The syntax file colors numbers, punctuation marks, links, quoted or bracketed text, Shell/C/C++ style comments, list items, TODOs/ERRORs, etc.
* The ftplugin file includes some usable settings when viewing and editing text file.
* The ftdetect file auto-detects text file according to file extension name.
* Support CJK characters.

#### Cons:
* If the text contains unmatching quotation/bracket marks, syntax color will be a little odd.

## Installation

#### [pathogen][pathogen]

```sh
cd ~/.vim/bundle
git clone --depth=1 https://github.com/flniu/txt.vim.git
```

#### [vim-plug][plug]

```vim
" Add this line in vim-plug section:
Plug 'flniu/txt.vim'
" Then run commands in vim:
:so %
:PlugInstall
```


[pathogen]:         https://github.com/tpope/vim-pathogen
[plug]:             https://github.com/junegunn/vim-plug/

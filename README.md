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

#### [pathogen][]

```sh
cd ~/.vim/bundle
git clone --depth=1 https://github.com/flniu/txt.vim.git
```

#### [vim-plug][]

```vim
" Add this line in vim-plug section:
Plug 'flniu/txt.vim'
" Then run commands in vim:
:so %
:PlugInstall
```

----

# txt.vim 中文说明

让Vim更加便于查看和编辑纯文本

> 版本: 0.1

#### 利:
* syntax文件分色显示数字、标点符号、链接、引号或括号中的文字、Shell/C/C++风格的注释、列表项、TODOs/ERRORs、等等。
* ftplugin文件包含一些查看和编辑纯文本文件的设置。
* ftdetect文件根据扩展名自动识别纯文本文件。
* 支持CJK字符集。

#### 弊:
* 如果文本中包含不匹配的引号或括号，文字的颜色会不正常。

## 安装方法

#### [pathogen][]

```sh
cd ~/.vim/bundle
git clone --depth=1 https://github.com/flniu/txt.vim.git
```

#### [vim-plug][]

```vim
" 在vim-plug配置节中添加这一行：
Plug 'flniu/txt.vim'
" 然后在vim中执行：
:so %
:PlugInstall
```


[pathogen]:         https://github.com/tpope/vim-pathogen
[vim-plug]:         https://github.com/junegunn/vim-plug/

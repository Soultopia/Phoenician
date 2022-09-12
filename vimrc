"------------------------------------------------------------------------------
"
"   Copyright 2020-2021 soultopia
"   Copyright 2020-2021 zhuyuheng
"   Copyright 2020-2021 yhngzhu@gmail.com
"
"   Licensed under the Apache License, Version 2.0 (the "License");
"   you may not use this file except in compliance with the License.
"   You may obtain a copy of the License at
"
"       http://www.apache.org/licenses/LICENSE-2.0
"
"   Unless required by applicable law or agreed to in writing, software
"   distributed under the License is distributed on an "AS IS" BASIS,
"   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
"   See the License for the specific language governing permissions and
"   limitations under the License.
"
"------------------------------------------------------------------------------


"--------Plug Manager--------{{{
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'tpope/vim-capslock'
Plug 'altercation/vim-colors-solarized'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/matchit.zip'
call plug#end()
"}}}


"--------Vim-airline-plug-config--------{{{

"enable view of top stateline
let g:airline#extensions#tabline#enabled = 1

"close the serial number show of buffer in top status bar
let g:airline#extensions#tabline#buffer_nr_show = 0

"close whitespace detect in the bottom status. (like trailing xxx with red color)
let g:airline#extensions#whitespace#enabled = 0

"theme of both of top and bottom state bar
let g:airline_theme = 'solarized'
let g:airline_solarized_normal_green = 1
let g:airline_solarized_dark_inactive_background = 1
let g:airline_solarized_dark_text = 1
let g:airline_solarized_dark_inactive_border = 1
let g:solarized_base16 = 1
let airline_solarized_enable_command_color = 1

"enable powerline fonts patcher for view of special char in state bar
let g:airline_powerline_fonts = 1

"capslock with software
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#capslock#symbol = 'C'

"nmap gc <Plug>CapsLockToggle
nmap <C-L> <Plug>CapsLockToggle
imap <C-L> <Plug>CapsLockToggle
cmap <C-L> <Plug>CapsLockToggle
vmap <C-L> <Plug>CapsLockToggle


"}}}


"--------Solarized-theme-plug-config--------{{{

"view the emulator transparently background
let g:solarized_termtrans=0

"show special value with style as follows
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1

"display solarized item in gvim menu
let g:solarized_menu=1

"display with my favorite palette
let g:solarized_contrast="high"

"level of color depth about invisible char, tab etc.
let g:solarized_visibility="low"

"termcolors cterm
let g:solarized_termcolors=256
let g:solarized_degrade=1

colorscheme solarized

"}}}


"--------SVerilog-plug-config--------{{{

let g:verilog_efm_uvm_lst = "all"
let g:verilog_efm_uvm_lst = "fatal,error,warning"

"}}}


"--------Matchit-plug-config--------{{{
if exists('loaded_matchit')
    let b:match_ignorecase=0

    "----system-verilog----{{{
    autocmd FileType vim let b:match_words=
    \ '\<if\>:\<endif\>,' .
    "}}}

    "----system-verilog----{{{
    autocmd FileType verilog_systemverilog let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<if\>:\<else\>,' .
    \ '\<class\>:\<endclass\>',
    \ '\<module\>:\<endmodule\>',
    \ '\<program\>:\<endprogram\>',
    \ '\<clocking\>:\<endclocking\>',
    \ '\<property\>:\<endpropperty\>',
    \ '\<sequence\>:\<endpropperty\>',
    \ '\<primitive\>:\<endpropperty\>',
    \ '\<covergroup\>:\<endpropperty\>',
    \ '\<package\>:\<endpropperty\>',
    \ '\<generate\>:\<endpropperty\>',
    \ '\<interface\>:\<endpropperty\>',
    \ '\<function\>:\<endpropperty\>',
    \ '\<task\>:\<endpropperty\>',
    \ '\<fork\>:\<join\>|\<join_any\>|\<join_none\>',
    \ '\<case\>|\<casex\>|\<casez\>:\<endpropperty\>',
    \ '`ifdef\>:`else\>:`endif\>',
    \ '`ifndef\>:`else\>:`endif\>',
    "}}}

endif
"}}}


"--------Common Option--------{{{


"----system before----{{{

"enable vim feature (vi is nocompatible with vim)
set nocompatible

"terminal support of color 256
set t_Co=256

"main tone of theme
set background=dark

"enable the view of bottom status bar
set laststatus=2

"syntax with highlight
syntax enable "alias source $VIMRUNTIME/syntax/syntax.vim

"enable overrule default setting
syntax on

"Find table for multi-format read-in files
set fileencodings=ucs-bom,ascii,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 

"if read file is different from internal encoding, the file will be encoded and converted to internal encoding. 
"And fileencoding will be setted to read file coding, the internal buffer will be converted to fileencoding when writing. 
"set fileencoding=utf-8

"vim internal encoding like buffer etc. (important)
set encoding=utf-8

"term display encoding
set termencoding=utf-8

"vimscript encoding
scriptencoding utf-8

"generate persistence undo file in undodir
set undofile
set undodir=$HOME/.vim/tmp/undo

"gen backup file in backupdir
set backup
set backupdir=$HOME/.vim/tmp/backup

"gen swap file in directory
set swapfile
set directory=$HOME/.vim/tmp/swap

"swap file refresh frequency
set updatetime=40000 "time
set updatecount=100  "char

"command line automatic completion and view in sttatusline
set wildmenu

"}}}


"----Text-after----{{{

"show invisible characters
set listchars+=tab:>-
set nolist


"type brackets etc. with highligh and jmp
set showmatch
set matchtime=3 "match flesh time (s)

"enable the keyboard of backspace
set backspace=2

"enable the number of line
set number

"show entire text in a line
set nowrap

"Numbers of space that <tab> look like
set tabstop=8

"convert tab to space
set expandtab

"Nnumbers of space that <tab> convert to, same with shiftwidth when value is negative
set softtabstop=-1

"Numbers of space that shift option using >> or <<
set shiftwidth=4

"the max number of char, in a line, for automatic enter with space
set textwidth=100

"Unenable the automatic comment insertion in start of line
set formatoptions-=r

"}}}


"----Indent and fold----{{{

"auto dectect, plugin and indent with filetype
filetype plugin indent on

"set indent mode
set noautoindent
set nocindent
set nosmartindent
set smarttab

"enable auto fold
set nofoldenable

"fold have six mothod. manual, indent, expr, syntax, diff and marker
set foldmethod=indent

"max of nested fold
set foldlevel=2

"view fold status in left
set foldcolumn=3

"}}}


"----Hightlight----{{{

"highlight the hor/ver curser
set ruler
set cursorline
set cursorcolumn

"set the fg and bg color of line number
if &background == "dark"
  autocmd FileType * highlight LineNr       ctermfg=241
  autocmd FileType * highlight LineNr       ctermbg=235
  autocmd FileType * highlight CursorLineNr cterm=bold
  autocmd FileType * highlight CursorLineNr ctermfg=230
  autocmd FileType * highlight CursorLineNr ctermbg=235  
  autocmd FileType * highlight cursorline   ctermbg=235
  autocmd FileType * highlight cursorcolumn ctermbg=235
else
  autocmd FileType * highlight CursorLineNr cterm=bold
  autocmd FileType * highlight CursorLineNr ctermfg=black
endif

"search with hightlight
set hlsearch
set incsearch

"}}}


"scrolling when 2 lines away from the edge
set scrolloff=2

"personal leader
let mapleader="-"
let maplocalleader="-"

"}}}


"--------GUI-Setting--------{{{

"enable mouse controler
set mouse=a

if has("win32")
  "set guifont=Powerline_Consolas:h12:cANSI:qDRAFT
  set guifont=Consolas-with-Yahei:h12:cANSI:qDRAFT
else
  "set guifont=Consolas-with-Yahei\ 13
  "set guifont=Monospace\ 13
  "set guifont=Powerline\ Consolas\ 13
  set guifont=Consolas-with-Yahei\ 13
endif

"no gui scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"no gui memu
"set guioptions-=m
"set guioptions-=T

"set the fg and bg color of line number
if &background == "dark"
  autocmd GUIEnter * highlight LineNr       guifg=gray 
  autocmd GUIEnter * highlight LineNr       guibg=Black 
  autocmd GUIEnter * highlight CursorLineNr gui=bold 
  autocmd GUIEnter * highlight CursorLineNr guifg=white 
else
  autocmd GUIEnter * highlight CursorLineNr gui=bold 
  autocmd GUIEnter * highlight CursorLineNr guifg=Black
endif

"gui menu language
set langmenu=en_US
let $LANG='en_US'
language messages en_US
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"}}}


"--------Common Mapping--------{{{

"map key
nnoremap <tab> :bn<cr>
nnoremap <leader><tab> :bp<cr>
nnoremap <tab>t :tabbn<cr>
nnoremap <leader><tab>t :tabbn<cr>

inoremap <buffer> jk <esc>

"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zo' : 'zc')<CR>

nnoremap () hf{v%:s/{\(.*\)}/(\1)/g<cr>:noh<cr>
nnoremap {} hf(v%:s/(\(.*\))/{\1}/g<cr>:noh<cr>

"}}}


"--------Common Abbreviation--------{{{
"iabbrev ( ()<del><left>
"}}}


"--------Auto Command--------{{{
autocmd BufNewFile * :w



"}}}


"--------Python Auto Command--------{{{

augroup python_habit

autocmd!
autocmd FileType python filetype indent off
autocmd FileType python set formatoptions-=r
autocmd FileType python set indentexpr=""
autocmd FileType python set autoindent
autocmd FileType python set nocindent
autocmd FileType python set nosmarttab
autocmd FileType python set nosmartindent
autocmd FileType python set foldclose=all
autocmd FileType python set foldmethod=indent

augroup END


augroup python_habit

autocmd FileType python  nnoremap <buffer> <localleader>c I#<esc>
autocmd FileType python  iabbr <buffer> classdef 
    \class Template(ABC):<cr>
    \<cr>
    \<tab>''' Class Template for ... '''<cr>
    \<cr>
    \def __init__(self, *args, **kvargs):<cr>
    \<tab>super(Template, self).__init__(*args, **kvargs)<cr>
    \pass<cr>
    \<left><left><left><left><cr>
    \def main(self):<cr>
    \<tab>pass

augroup END


"}}}


"--------Vimscript Auto Command--------{{{

augroup vimscript_habit

autocmd!
autocmd FileType vim set formatoptions-=r
"autocmd FileType vim set foldmarker={,}
autocmd FileType vim set foldmethod=marker

augroup END

"}}}


"--------Makefile Auto Command--------{{{

augroup makefile_habit

autocmd!
autocmd FileType make set listchars=tab:>-
autocmd FileType make set list
autocmd FileType make set formatoptions-=r
autocmd FileType make set foldmethod=marker

augroup END

"}}}


"--------SVerilog Auto Command--------{{{

augroup sverilog_habit

autocmd!
autocmd FileType verilog_systemverilog set foldmethod=syntax
autocmd FileType verilog_systemverilog nnoremap <leader>c I//<esc>
autocmd FileType verilog_systemverilog iabbrev alwaysdef 
    \always@(posedge clk or negedge rst) begin<cr>
    \if<space>(!rst)<space>begin<cr>
    \<cr>
    \end<cr>
    \else begin<cr>
    \<cr>
    \end<cr>
    \end

augroup END

"}}}


"--------Bash Auto Command--------{{{

augroup bash_habit

autocmd!
autocmd FileType sh set formatoptions-=r
autocmd FileType sh set foldmethod=marker
autocmd FileType sh noremap <leader>$ bi${<esc>wwi}<esc>

augroup END

"}}}

"autocmd InsertCharPre * let v:char = v:char ==# tolower(v:char) ? toupper(v:char) : tolower(v:char)



"augroup!

"autocmd FileType v set filetype=verilog_systemverilog
"autocmd FileType sv set filetype=verilog_systemverilog

"augroup END




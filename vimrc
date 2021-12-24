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

"--------Plug Manager--------{
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"}


"--------Common Option--------{

"enable vim feature (vi is nocompatible with vim)
set nocompatible

"enable mouse controler
set mouse=a

"type brackets etc. with highligh and jmp
set showmatch
set matchtime=3 "jmp time

"show the below status
set laststatus=2

"back groud color
set background=dark

"enable the keyboard of backspace
set backspace=2

"enable the number of line
set number

"highlight the hor/ver curser
set ruler
set cursorline
set cursorcolumn

"set the fg and bg color of line number
if &background == "dark"
  highlight LineNr       ctermfg=magenta     guifg=magenta 
  highlight LineNr       ctermbg=black       guibg=black
  "highlight cursorline   ctermfg=black       guifg=magenta 
  highlight cursorline   ctermbg=black    guifg=magenta 
  "highlight cursorcolumn ctermfg=black       guifg=magenta 
  highlight cursorcolumn ctermbg=black    guifg=magenta 
else
  highlight LineNr ctermfg=magenta   guifg=magenta
  highlight LineNr ctermbg=black     guibg=black
endif

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

"delete swap file
set noundofile
set nobackup
set noswapfile

"syntax with highlight
syntax on

"search with hightlight
set hlsearch
set incsearch

"set indent
set autoindent

"the max number of char, in a line, for automatic enter with space
set textwidth=100

"Unenable the automatic comment insertion in start of line
set formatoptions-=r

"personal leader
let mapleader="-"
let maplocalleader="-"

"}


"--------Common Mapping--------{

"map key
nnoremap <tab> :bn<cr>
nnoremap <leader><tab> :bp<cr>

inoremap <buffer> jk <esc>

"}


"--------Common Abbreviation--------{
iabbr alwaysdef 
\always@(posedge clk or negedge rst)<space>begin<cr>
\<tab>if<space>(!rst)<space>begin<cr>
\<tab>end<cr>
\<tab>else begin<cr>
\<tab>end<cr>
\end
"}


"--------Auto Command--------{
autocmd BufNewFile * :w

augroup python_habit
    autocmd!
    autocmd FileType python  nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python  iabbrev <buffer> iff if:<left>
"take place
    autocmd FileType python  iabbr <buffer> absclassdef 
\class(ABC):<cr>
\<tab>''' '''<cr>
\<tab>def<space>__init__(self, *args, **kvargs):<cr>
\<tab><tab>pass

autocmd FileType python  iabbr <buffer> classdef 
\class:<cr><tab>''' '''<cr>
\<tab>def<space>__init__(self, *args, **kvargs):<cr>
\<tab><tab>pass

augroup END

autocmd FileType verilog nnoremap <buffer> <localleader>c I//<esc>


augroup vim_habit
    autocmd!
    autocmd FileType vim set foldmarker={,}
    autocmd FileType vim set foldmethod=marker
augroup END


"}



    

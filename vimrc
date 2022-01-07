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
Plug 'altercation/vim-colors-solarized'
call plug#end()
"}


"--------Vim-airline-plug-config--------{

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
let airline_solarized_enable_command_color = 1
let g:solarized_base16 = 1

"enable powerline fonts patcher for view of special char
let g:airline_powerline_fonts = 1

"}


"--------Solarized-theme-plug-config--------{
let g:solarized_termtrans=1
let g:solarized_degrade=1
let g:solarized_bold=0
let g:solarized_underline=0
let g:solarized_italic=0
let g:solarized_menu=1
let g:solarized_contrast="low"
let g:solarized_visibility="low"

"termcolors cterm
let g:solarized_termcolors=256
colorscheme solarized
"}


"--------Common Option--------{

"show invisible characters
set nolist
set listchars=tab:>.,trail:-

"enable vim feature (vi is nocompatible with vim)
set nocompatible

"enable mouse controler
set mouse=a

"type brackets etc. with highligh and jmp
set showmatch
set matchtime=3 "jmp time

"enable the view of bottom status bar
set laststatus=2

"main tone of theme
set background=light

"enable the keyboard of backspace
set backspace=2

"enable the number of line
set number

"terminal support of color 256
set t_Co=256

"highlight the hor/ver curser
set ruler
set cursorline
set cursorcolumn

"set the fg and bg color of line number
if &background == "dark"
  highlight LineNr       ctermfg=241 guifg=LightRed 
  highlight LineNr       ctermbg=234 guibg=Black 
  highlight CursorLineNr cterm=bold  gui=bold 
  highlight CursorLineNr ctermfg=230 guifg=LightRed 
  highlight CursorLineNr ctermbg=235 guibg=LightRed 
  highlight cursorline   ctermbg=234 guifg=magenta
  highlight cursorcolumn ctermbg=234 guifg=magenta
else
  highlight LineNr       ctermfg=241 guifg=LightRed 
  highlight LineNr       ctermbg=234 guibg=Black 
  highlight CursorLineNr cterm=bold  gui=bold 
  highlight CursorLineNr ctermfg=230 guifg=LightRed 
  highlight CursorLineNr ctermbg=235 guibg=LightRed 
  highlight cursorline   ctermbg=234 guifg=magenta
  highlight cursorcolumn ctermbg=234 guifg=magenta
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

"syntax with highlight
syntax enable
syntax on

"search with hightlight
set hlsearch
set incsearch

"auto indent with filetype
filetype indent on

"set indent mode
set noautoindent
set nocindent
set nosmartindent
set nosmarttab

"the max number of char, in a line, for automatic enter with space
set textwidth=100

"Unenable the automatic comment insertion in start of line
set formatoptions-=r

"enable auto fold
set nofoldenable

"fold have six mothod. manual, indent, expr, syntax, diff and marker
set foldmethod=indent

"max of nested fold
set foldlevel=2

"view fold status in left
"set foldcolumn=2

"personal leader
let mapleader="-"
let maplocalleader="-"

"}


"--------Common Mapping--------{

"map key
nnoremap <tab> :bn<cr>
nnoremap <leader><tab> :bp<cr>
nnoremap <tab>t :tabbn<cr>
nnoremap <leader><tab>t :tabbn<cr>

inoremap <buffer> jk <esc>

"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zo' : 'zc')<CR>


"}


"--------Common Abbreviation--------{
iabbrev ( ()<del><left>
"}


"--------Auto Command--------{
autocmd BufNewFile * :w



"}


"--------Python Auto Command{

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
autocmd FileType python  iabbr <buffer> classdef class Template(ABC):<cr>
\<cr>
\<tab>''' Class Template for ... '''<cr>
\<cr>
\def __init__(self, *args, **kvargs):<cr>
\<tab>super(Template, self).__init__(*args, **kvargs)<cr>
\pass<cr>
\<left><left><left><left><cr>
\def fun(self):<cr>
\<tab>pass

augroup END


"}


"--------SVerilog Auto Command{

augroup sverilog_habit

autocmd!
autocmd FileType verilog nnoremap <leader>c I//<esc>
autocmd FileType verilog iabbrev alwaysdef
\always@(posedge clk or negedge rst)<space>begin<cr>
\<tab>if<space>(!rst)<space>begin<cr>
\<tab>end<cr>
\<tab>else begin<cr>
\<tab>end<cr>
\end

augroup END

"}


"--------Vimscript Auto Command{

augroup vimscript_habit

autocmd!
autocmd FileType vim set formatoptions-=r
autocmd FileType vim set foldmarker={,}
autocmd FileType vim set foldmethod=marker

augroup END

"}


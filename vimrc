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

"
set background=dark

"enable the key of backspace
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

set nowrap

"convert tab to space
set expandtab

"Numbers of space that <tab> look like
set tabstop=8

"Nnumbers of space that <tab> convert to, same with shiftwidth when value is negative
set softtabstop=-1

"Numbers of space that shift option using >> or <<
set shiftwidth=4


set noundofile
set nobackup
set noswapfile

syntax on

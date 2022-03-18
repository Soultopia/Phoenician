#!/bin/bash

cp -rf ../fonts /usr/share/fonts/vim-fonts
cd /usr/share/fonts/vim-fonts
mkfontscale
mkfontdir
fc-cache
fc-list
cd -

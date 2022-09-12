# Phoenician

```
   ___  __                 _     _         
  / _ \/ /  ___  ___ ___  (_)___(_)__ ____ 
 / ___/ _ \/ _ \/ -_) _ \/ / __/ / _ `/ _ \
/_/  /_//_/\___/\__/_//_/_/\__/_/\_,_/_//_/
                                           
```

## Introduction

Phoenician is a personal vim profile and bash configuration script. In order to collapse platforms,
such as Windows and Linux, use Phoenician for rapid configuration. Make vim support cross-platforms
and quickly configure bash's personal habitual configuration.

## Hierarchy

Phoenician's Hierarchy as follows, 

```
.
|-- vim
|   |-- autoload
|   |   `-- plug.vim
|   |-- fonts
|   |   |-- config.sh
|   |   |-- Consolas-with-Yahei\ Bold\ Italic\ Nerd\ Font.ttf
|   |   |-- Consolas-with-Yahei\ Bold\ Nerd\ Font.ttf
|   |   |-- Consolas-with-Yahei\ Italic\ Nerd\ Font.ttf
|   |   `-- Consolas-with-Yahei\ Nerd\ Font.ttf
|   |-- plugged
|   |   |-- LeaderF
|   |   |-- matchit.zip
|   |   |-- verilog_systemverilog.vim
|   |   |-- vim-airline
|   |   |-- vim-airline-themes
|   |   `-- vim-colors-solarized
|   `-- tmp
|       |-- backup
|       |-- swap
|       `-- undo
|-- bashrc
|-- LICENSE
|-- README.md
|-- setup.sh
`-- vimrc
```

## Usage

1. Configuration

Run command ./setup.sh in Phoenician directory. And the user file .vimrc will be linked to file vimrc
in directory Phoenician, user directory .vim same with .vimrc to be linked with directory vim in Phoenician.
At the same time, .vimrc and .vim will be backup to directory .psl_time (suffix is time point of backup action)
at the home directory.

2. Fonts

Run command ./config in fonts directory with root. And the fonts Consolas-with-Yahei will be installed for
the current server and support the Plug-in (airline) display with utf-8 patch characters.

3. Install

Run :PlugStatus display the status of Plug-in units and :PlugInstall to install Plug-in units with git on the vimrc.

" Use two spaces for indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
let g:indent_guildes_start_level = 2

set ignorecase
set smartcase 
set incsearch
set ruler 
set shortmess+=I
set autoread
set mouse=a
set number

" pathogen
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
call pathogen#infect()
call pathogen#helptags()

" Enable filetype plugins 
filetype plugin on
syntax on

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


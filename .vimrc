" basic settings {{{

set nocompatible
set backspace=2
set hidden
set showmatch
set nobackup
set noswapfile
set pastetoggle=<F2>

" use two spaces for indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set autoindent
set smartindent

set ruler
set shortmess+=I
set autoread
set relativenumber
set number

" Get rid of those enticing arrow keys
noremap <Right> <NOP>
noremap <Left> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap ; :

" search easier
set gdefault
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set hlsearch

" remove whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" enable folding
set foldmethod=manual
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zM

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

inoremap { {<CR><BS>}<Esc>ko
inoremap ( ()<Esc>i
inoremap [ []<Esc>i

" }}}

" Plugins {{{

" pathogen
execute pathogen#infect()
execute pathogen#helptags()

" Enable filetype plugins
filetype plugin indent on
syntax on

" fugitive
nnoremap <leader>A :Git add %:p<CR><CR>
nnoremap <leader>. :Git a<CR><CR>
nnoremap <leader>s :Gstatus<CR>
nnoremap <leader>cm :Git cm<CR>
nnoremap <leader>d :Gdiff<CR>
nnoremap <leader>e :Gedit<CR>
nnoremap <leader>r :Gread<CR>
nnoremap <leader>w :Gwrite<CR><CR>
nnoremap <leader>f :Ggrep<Space>
nnoremap <leader>mv :Gmove<Space>

" solarized
syntax enable
set background=dark
colorscheme solarized

" Ag
nnoremap <leader>a :Ag 

" fzf
nnoremap <leader>p :Files<CR>
set rtp+=~/.fzf

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:go_metalinter_enabled = 1

au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)

" neocomplete
let g:neocomplete#enable_at_startup = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline
set laststatus=2
let g:airline_theme = 'solarized'

" }}}

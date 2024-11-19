set encoding=utf-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent
set smarttab

set number
set relativenumber
set wrap
set linebreak

set hlsearch
set incsearch
set ignorecase
set smartcase

syntax on
filetype plugin indent on
nnoremap <Space> :noh<CR>

set ruler
set showcmd
set scrolloff=2

set nocompatible
set ttyfast

set rtp+=/opt/homebrew/opt/fzf

let &t_SI="\033[6 q"
let &t_EI="\033[1 q"

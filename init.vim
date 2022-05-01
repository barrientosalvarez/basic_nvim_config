set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

syntax on
filetype plugin indent on

set mouse=a
set clipboard=unnamed
set ruler
set encoding=utf-8 

"set hidden

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
"set number
set guicursor=
set relativenumber
set nu
set nowrap
set scrolloff=10

set colorcolumn=83

"set nocompatible

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
Plug 'townk/vim-autoclose'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'sheerun/vimrc'
"Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Temas
"Plug 'dracula/vim',{'as':'dracula'}
Plug 'morhetz/gruvbox'
"Plug 'phanviet/vim-monokai-pro'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"colorscheme dracula
set background=dark
let g:gruvbox_contrast_dark='hard'
let mapleader=" "

colorscheme gruvbox
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search =vim.fn.input("Grep For > ")})<CR>

"monokai-pro
"set termguicolors
"colorscheme monokai_pro
"Neoscroll: a smooth scrolling neovim plugin written in lua


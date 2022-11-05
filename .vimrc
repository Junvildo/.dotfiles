set backspace=2
syntax on
filetype plugin indent on
set autoindent
set relativenumber
set nobackup
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'


call plug#begin('~/.vim/autoload')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'raingo/vim-matlab'

call plug#end()

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

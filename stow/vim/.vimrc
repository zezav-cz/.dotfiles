set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
"set guicursor
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set ignorecase
set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set termguicolors
set colorcolumn=160
set signcolumn=yes
set background=dark
"set cmdheight=2
set updatetime=50



call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme gruvbox
"highlight Nomal guibg=none

hi TrailingWhitespace ctermbg=red guibg=red
call matchadd("TrailingWhitespace", '\v\s+$')

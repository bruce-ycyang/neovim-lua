set encoding=utf-8
set number relativenumber
syntax enable
set clipboard=unnamed
set noswapfile
set scrolloff=8

" tab and space
set softtabstop=2
set shiftwidth=2
set expandtab

" tab
set showtabline=2
set splitbelow
set splitright

" search
set hlsearch
set ignorecase
set incsearch

"Theme color
set background=dark
colorscheme gruvbox


"call plug#begin('~/.local/share/nvim/plugged')
"主題
"Plug 'morhetz/gruvbox'

" 自動補全括號的外掛，包括小括號，中括號，以及花括號
"Plug 'jiangmiao/auto-pairs'

" Vim狀態列外掛，包括顯示行號，列號，檔案型別，檔名，以及Git狀態
"Plug 'vim-airline/vim-airline'

"call plug#end()

" ----------------  Plugins  ----------------------------------------

"lua Packer插件管理
lua require('plugins')

"Plugins config
lua require('plugin-config/treesitter')



" -------------------------------------------------------------------

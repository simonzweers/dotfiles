set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

call plug#begin()

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'ms-jpq/coq_nvim'
Plug 'preservim/nerdtree'

call plug#end()

lua << EOF
require('lualine').setup()

EOF

autocmd VimEnter * NERDTree | wincmd p
" colorscheme onedark

call plug#begin('~/AppData/Local/nvim/plugged')

" THEMES
Plug 'morhetz/gruvbox'
Plug 'sxhk0/zhxo.nvim'
Plug 'savq/melange-nvim'
Plug 'scottmckendry/cyberdream.nvim'
Plug 'gambhirsharma/vesper.nvim'
Plug 'jackplus-xyz/binary.nvim'
Plug 'jaredgorski/fogbell.vim'
Plug 'widatama/vim-phoenix'
Plug 'axvr/photon.vim'
Plug 'nikolvs/vim-sunbather'

" PLUGINS
Plug 'https://github.com/m4xshen/autoclose.nvim'        " 
Plug 'terryma/vim-multiple-cursors'                     " multiple cursors
Plug 'https://github.com/terryma/vim-smooth-scroll'     " smooth scrolling
Plug 'https://github.com/rstacruz/vim-closer'           " For brackets autocompletion
Plug 'jiangmiao/auto-pairs'                             " this will auto close ( [ {
Plug 'stevearc/oil.nvim'                                " file explorer
" Plug 'xiyaowong/transparent.nvim'                       " window transparency
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}           " multiple terminals
" Plug 'neoclide/coc.nvim', {'branch': 'release'}         " snippets

" LSP AND SNIPPETS
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" STATUS LINE
Plug 'nvim-lualine/lualine.nvim'

"Errors 
Plug 'dmmulroy/ts-error-translator.nvim'

" Hover plugin
Plug 'lewis6991/hover.nvim'

call plug#end()


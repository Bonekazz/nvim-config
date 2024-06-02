" source $HOME\AppData\Local\nvim\config\coc.vim
source $HOME\AppData\Local\nvim\config\plugins.vim
source $HOME\AppData\Local\nvim\config\snippets.vim
source $HOME\AppData\Local\nvim\config\lsp.vim
source $HOME\AppData\Local\nvim\config\lualine.vim
source $HOME\AppData\Local\nvim\config\mapings.vim
source $HOME\AppData\Local\nvim\config\settings.vim


:lua require("oil").setup()
" :lua require("transparent").setup()

:lua << EOF
require("toggleterm").setup({
    direction = 'float',
    auto_scroll = true,
})
EOF



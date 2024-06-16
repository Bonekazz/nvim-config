" source $HOME\AppData\Local\nvim\config\coc.vim
source $HOME\AppData\Local\nvim\config\plugins.vim
source $HOME\AppData\Local\nvim\config\snippets.vim
source $HOME\AppData\Local\nvim\config\lsp.vim
source $HOME\AppData\Local\nvim\config\lualine.vim
source $HOME\AppData\Local\nvim\config\mapings.vim
source $HOME\AppData\Local\nvim\config\settings.vim


:lua << EOF
require("oil").setup({
    keymaps = {
        ["<C-S-h>"] = "actions.select_split",
        ["<C-S-l>"] = "actions.refresh",
    },
    view_options = {
        show_hidden = true,
    },
    float = {
        padding = 2,
        border = "rounded",
    }
})
EOF
" :lua require("transparent").setup()

:lua << EOF
require("toggleterm").setup({
    direction = 'float',
    auto_scroll = true,
})
EOF



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

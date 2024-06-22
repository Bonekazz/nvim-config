:lua vim.diagnostic.config({virtual_text = true, signs = false, underline = false})

:lua << EOF
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        html, jsonls, tsserver, autotools_ls,
        markdown_oxide, basedpyright, tailwindcss
    },
    automatic_instalation = true,
})

require("lspconfig").html.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").basedpyright.setup {}
require("lspconfig").tailwindcss.setup {}
require("lspconfig").csharp_ls.setup {}

EOF

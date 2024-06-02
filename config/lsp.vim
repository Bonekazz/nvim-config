:lua vim.diagnostic.config({virtual_text = false, signs = false, underline = false,})


:lua require("mason").setup()
:lua << EOF
require("mason-lspconfig").setup({
    ensure_installed = {
        clangd, cquery, html, jsonls, tsserver, autotools_ls,
        markdown_oxide, basedpyright, tailwindcss, 
    },
    automatic_instalation = true,
})

require("lspconfig").clangd.setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
}
require("lspconfig").html.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").basedpyright.setup {}
require("lspconfig").tailwindcss.setup {}
require("lspconfig").csharp_ls.setup {}

EOF
:lua vim.diagnostic.config({virtual_text = true, signs = true, underline = true})

:lua << EOF
local lsp = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "ast_grep", "kotlin_language_server", clangd, cmake, "lua_ls", html, jsonls, ts_ls, autotools_ls,
        markdown_oxide, basedpyright, tailwindcss, golangci_lint_ls
    },
    automatic_instalation = true
})

lsp.clangd.setup {
  cmd = {"clangd", "--compile-commands-dir=" .. vim.fn.getcwd()},
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = require'lspconfig'.util.root_pattern(".clangd", "makefile", ".git"),
}

lsp.cmake.setup {}
lsp.lua_ls.setup {}
lsp.html.setup {}
lsp.ts_ls.setup {}
lsp.basedpyright.setup {}
lsp.tailwindcss.setup {}
lsp.csharp_ls.setup {}
lsp.golangci_lint_ls.setup{}
lsp.kotlin_language_server.setup({
  on_attach = function(client, bufnr)
      -- Add any custom on_attach functionality here
      print("Kotlin LSP attached to buffer " .. bufnr)
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
})
lsp.ast_grep.setup {}

EOF


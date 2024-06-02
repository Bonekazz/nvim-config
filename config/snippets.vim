:lua << EOF
    local cmp = require'cmp'

    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = false }),
            ['<K>'] = cmp.mapping.open_docs(),
            ['<C-K>'] = cmp.mapping.open_docs(),
            ['<Tab>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior, count = 1}),
            ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior, count = 1}),
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'vsnip' },
        }, {
            { name = 'buffer' },
        })
    })


    local lspconfig = require'lspconfig'
    lspconfig.clangd.setup{}


EOF

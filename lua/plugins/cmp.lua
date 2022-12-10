local cmp = require'cmp'
local m = cmp.mapping
local setup = cmp.setup

setup({
        snippet = {
            expand=  function(args)
                vim.fn['vsnip#anonymous'](args.body)
            end,
        },
        window = {},
        mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = m.scroll_docs(-4),
                ['<C-f>'] = m.scroll_docs(4),
                ['<C-Space>'] = m.complete(),
                ['<C-e>'] = m.abort(),
                ['<CR>'] = m.confirm({select = true})
            }),
        sources = cmp.config.sources({
                {name = 'nvim_lsp'},
                { name = 'vsnip' }
            },
            {
                name = 'buffer'
            }
            )
})

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

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

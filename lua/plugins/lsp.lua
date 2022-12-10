local lsp = require'lspconfig'
local capabilities = require'cmp_nvim_lsp'.default_capabilities()

lsp.pyright.setup{}
lsp.tsserver.setup{ capabilities = capabilities }
lsp.html.setup{ capabilities = capabilities }
lsp.cssls.setup{}

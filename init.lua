-- packages
require('packerConfig')

-- General settings
require('settings')

-- Shurtcuts
require('shortcuts')

-- IDE ------------
require('plugins.lsp-colors')
require('plugins.trouble')
require('plugins.bufferline')
require('plugins.floaterm')
require('plugins.airline')
require('plugins.coc')
require('plugins.cmpConfig')
require('plugins/lsp')

-- Auto cmd
vim.cmd([[ autocmd VimEnter * source ~/.config/nvim/lua/shortcuts.lua ]])

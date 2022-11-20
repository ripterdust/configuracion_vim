require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}


require("bufferline").setup{
options = {
    mode = "buffers",
    numbers = "ordinal",
    indicator = {
      style = 'icon'
     },
   hover = {
     enabled = true,
     reveal = {'close'},
     delay= 200
     },
    left_mouse_comman = 'buffer %d',
    right_mouse_command = 'buffer delete',
    buffer_close_icon = 'X',
    diagnostics = 'coc',
    show_close_icon = true,
    
  }
}


require('lsp-colors').setup({
  Error = "#db4b4b",
  Warning = '#e0af68',
  Information = '#0db9d7',
  Hing = "#10B981"
})

require("trouble").setup {
    icons = false,
    fold_open = "v", -- icon used for open folds
    fold_closed = ">", -- icon used for closed folds
    indent_lines = false, -- add an indent guide below the fold icons
    signs = {
        -- icons / text used for a diagnostic
        error = "error",
        warning = "warn",
        hint = "hint",
        information = "info"
    },
    use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
  }


require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules", '~/.config/nvim/plugged/'} } }
local opt = vim.opt
local o = vim.o

opt.number = true
opt.mouse = 'a'
opt.showmatch = true
opt.clipboard = 'unnamedplus'
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
o.termguicolors = true

vim.cmd [[
  syntax enable
  colorscheme tokyonight
  syntax enable
  
]]
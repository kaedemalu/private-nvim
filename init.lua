require'plugins'
vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

-- For sidebar-nvim
local sidebar = require("sidebar-nvim")
local opts = {open = true}
sidebar.setup(opts)

vim.cmd('colorscheme terafox')

require 'lualine'.setup {
  options = {
    theme = 'dracula'
  }
}

-- From .vimrc
local opt = vim.o
opt.number = true
opt.cuc = true -- Cursor Column
opt.cul = true -- Cursor Line

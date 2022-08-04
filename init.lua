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

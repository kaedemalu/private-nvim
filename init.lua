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
-- see :help vim.opt
local opt = vim.opt
opt.number = true
opt.visualbell = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.cuc = true -- Cursor Column
opt.cul = true -- Cursor Line

-- Setting for Telescope.nvim
-- vim.keymap.set('n', 'sf', '<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_ivy({}))<cr>',{noremap = true})
vim.keymap.set('n', 'sf', '<cmd>lua require("telescope.builtin").find_files()<cr>',{noremap = true})
vim.keymap.set('n', 'sb', '<cmd>lua require("telescope.builtin").buffers()<cr>',{noremap = true})
vim.keymap.set('n', 'sh', '<cmd>lua require("telescope.builtin").help_tags()<cr>',{noremap = true})

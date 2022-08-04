vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use 'EdenEast/nightfox.nvim'

  use {'neoclide/coc.nvim'}
  use { 'hashicorp/terraform-ls' }
  use { 'sidebar-nvim/sidebar.nvim' }

  use{'wbthomason/packer.nvim', opt = true}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

require('sidebar-nvim').setup({
  sections = { 'git', 'symbols', 'files' },
  files = {
    icon = '🗂',
    show_hidden = false,
    ignored_path = {'%.git$'}
  },
  symbols = {
    icon = 'ƒ',
  },
  git = {
    icon = '',
  }
})

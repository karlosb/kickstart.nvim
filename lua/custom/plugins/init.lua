-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {
        hijack_netrw = true,
        update_cwd = true,
        view = { width = 30, side = 'left' },
      }
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
    end,
  },

  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {}
      vim.keymap.set('n', '<leader>o', require('oil').open, { desc = 'Open Oil File Explorer' })
    end,
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = false,
    enabled = true,
    config = function()
      require('nvim-web-devicons').setup {}
    end,
  },
  {
    'm4xshen/hardtime.nvim',
    lazy = false,
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {},
  },
}

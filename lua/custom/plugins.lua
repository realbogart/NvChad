local plugins = {
  {
    "mfussenegger/nvim-dap"
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },

  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "mrcjkb/haskell-tools.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    branch = '2.x.x',
    config = function()
      require "custom.configs.haskell"
    end,
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  },

  {
    "sindrets/diffview.nvim",
    config = function ()
      require "custom.configs.diffview"
    end,
  },

  {
    'https://codeberg.org/esensar/nvim-dev-container',
  },
}

return plugins

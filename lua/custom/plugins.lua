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
    branch = '1.x.x',
    -- init = function()
    --   require("core.utils").lazy_load "mrcjkb/haskell-tools.nvim"
    -- end,
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require "custom.configs.haskell"
    end,
  },
}

return plugins

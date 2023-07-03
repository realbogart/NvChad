local plugins = {
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
    config = function()
      require "custom.configs.haskell"
    end,
  },
}

return plugins

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

  {
    'realbogart/gitlab-bindings',
  },

  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function ()
      require "custom.configs.harpoon"
    end,
    lazy = false
  },

  {
    "epwalsh/obsidian.nvim",
    version = "v2.5.3",
    lazy = true,
    -- ft = "markdown",
    event = {
      "BufReadPre " .. vim.fn.expand "~" .. "/obsidian/**.md",
      "BufNewFile " .. vim.fn.expand "~" .. "/obsidian/**.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "obsidian",
          path = "~/obsidian",
        },
      },

      completion = {
        min_chars = 1
      },

      templates = {
          subdir = "templates",
          date_format = "%Y-%m-%d-%a",
          time_format = "%H:%M",
      },
    },
  },
}

return plugins

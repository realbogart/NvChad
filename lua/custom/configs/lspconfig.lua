local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  single_file_support = true,
})


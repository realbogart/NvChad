local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.hls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"haskell", "lhaskell"},
  single_file_support = true,
  cmd = { "haskell-language-server-wrapper", "--lsp" }
})


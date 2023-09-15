local M = {}

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua require'custom.custom_diagnostic_float'.show_diagnostic_at_bottom()]]

M.disabled = {
  n = {
      ["<leader>gt"] = "",
      ["<tab>"] = "",
  }
}

M.abc = {
  n = {
    ["<leader>tt"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<leader>j"] = {"<cmd> Telescope jumplist <CR>", "Telescope jumplist"},
    ["<leader><leader>"] = {"<cmd> Telescope resume <CR>", "Telescope resume"},
    -- Git bindings
    ["<leader>gf"] = {"<cmd> Telescope git_files <CR>", "Git files"},
    ["<leader>gs"] = {"<cmd> Telescope git_status <CR>", "Git status"},
    ["<leader>gc"] = {"<cmd> Telescope git_commits <CR>", "Git commits"},
    ["<leader>gh"] = {"<cmd> Telescope git_bcommits <CR>", "Git buffer commits"},
    -- LSP bindings
    ["<leader>lr"] = {"<cmd> Telescope lsp_references include_current_line=true<CR>", "LSP references"},
    ["<leader>ld"] = {"<cmd> Telescope lsp_definitions<CR>", "LSP definitions"},
    ["<leader>li"] = {"<cmd> Telescope lsp_implementations<CR>", "LSP implementations"},
    ["<leader>ls"] = {"<cmd> Telescope lsp_workspace_symbols<CR>", "LSP workspace symbols"},
    ["<leader>lb"] = {"<cmd> Telescope lsp_document_symbols<CR>", "LSP document symbols"},
    ["<leader>le"] = {"<cmd> Telescope diagnostics<CR>", "LSP diagnostics"},
    ["<leader>lc"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },
    ["<leader>lh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },
}

return M

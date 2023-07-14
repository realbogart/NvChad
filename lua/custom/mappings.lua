local M = {}

M.disabled = {
  n = {
      ["<leader>gt"] = "",
  }
}

M.abc = {
  n = {
     ["<leader>tt"] = {"<cmd> Telescope <CR>", "Telescope"},
    -- Git bindings
     ["<leader>gf"] = {"<cmd> Telescope git_files <CR>", "Git files"},
     ["<leader>gs"] = {"<cmd> Telescope git_status <CR>", "Git status"},
     ["<leader>gc"] = {"<cmd> Telescope git_commits <CR>", "Git commits"},
    -- LSP bindings
     ["<leader>lr"] = {"<cmd> Telescope lsp_references<CR>", "LSP references"},
     ["<leader>ld"] = {"<cmd> Telescope lsp_definitions<CR>", "LSP definitions"},
     ["<leader>li"] = {"<cmd> Telescope lsp_implementations<CR>", "LSP implementations"},
  },
}

return M

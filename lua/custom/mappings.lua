local M = {}

M.disabled = {
  n = {
      ["<leader>gt"] = "",
  }
}

M.abc = {
  n = {
     ["<leader>gj"] = {"<cmd> Telescope <CR>", "Telescope"},
     ["<leader>gf"] = {"<cmd> Telescope git_files <CR>", "Git files"},
     ["<leader>gs"] = {"<cmd> Telescope git_status <CR>", "Git status"},
     ["<leader>gc"] = {"<cmd> Telescope git_commits <CR>", "Git commits"},
  },
}

return M

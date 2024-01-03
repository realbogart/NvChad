---@type ChadrcConfig 
local M = {}

M.ui = {
  theme = 'palenight',
  tabufline = {
    enabled = false
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M


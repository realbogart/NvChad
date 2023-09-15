local M = {}

M.show_diagnostic_at_bottom = function()
  local bufnr = vim.api.nvim_get_current_buf()
  local diagnostics = vim.diagnostic.get(bufnr)

  -- Filter diagnostics for the current line only.
  local current_line = vim.api.nvim_win_get_cursor(0)[1] - 1
  local current_diagnostics = {}
  for _, diag in ipairs(diagnostics) do
    if diag.lnum == current_line then
      table.insert(current_diagnostics, diag)
    end
  end

  -- If there are no diagnostics for the current line, exit.
  if #current_diagnostics == 0 then return end

  -- Create the diagnostic message.
  local lines = {}
  for _, diag in ipairs(current_diagnostics) do
      table.insert(lines, diag.message)
  end

  -- Calculate the length of the longest diagnostic message.
  local longest_line = 0
  for _, line in ipairs(lines) do
      longest_line = math.max(longest_line, #line)
  end

  -- Calculate position for the floating window at the bottom.
  local win_height = vim.api.nvim_win_get_height(0)
  local height = #lines
  local width = vim.api.nvim_win_get_width(0)
  local col = math.max(0, ((width - longest_line) / 2))
  local row = win_height - height

  -- Create floating window.
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, false, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    border = 'rounded',
    focusable = false,
  })

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  -- Highlight the diagnostic messages.
  for i, diag in ipairs(current_diagnostics) do
      local highlight_group = "Diagnostic" .. (vim.diagnostic.severity[diag.severity] or "Unknown")
      vim.api.nvim_buf_add_highlight(buf, -1, highlight_group, i-1, 0, -1)
  end

  -- Auto close the window on CursorMoved
  vim.api.nvim_command("autocmd CursorMoved <buffer> ++once :lua vim.api.nvim_win_close("..win..", true)")
end

return M


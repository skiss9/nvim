keyfns = {}

local function tree_focused()
  local curr_buf = vim.api.nvim_get_current_buf()
  local curr_ft = vim.api.nvim_buf_get_option(curr_buf, "filetype")
  return curr_ft == "NvimTree"
end

keyfns.toggle_tree_buffer = function()
  if tree_focused() then
    vim.cmd("wincmd p")
  else
    vim.cmd("NvimTreeFocus")
  end
end

keyfns.close_buffer = function()
  local buffer_count = #vim.fn.getbufinfo({ buflisted = 1 })
  if buffer_count <= 1 then
    vim.cmd("NvimTreeClose")
    vim.cmd("quit")
  else
    vim.cmd("bp|bd #")
  end
end

keyfns.insert_line_above = function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line - 1, current_line - 1, false, { "" })
end

keyfns.insert_line_below = function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line, current_line, false, { "" })
end

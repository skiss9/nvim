local M = {}

local textOjbectSelect = require("nvim-treesitter.textobjects.select")
local textOjbectMove = require("nvim-treesitter.textobjects.move")

local function tree_focused()
  local curr_buf = vim.api.nvim_get_current_buf()
  local curr_ft = vim.api.nvim_buf_get_option(curr_buf, "filetype")
  return curr_ft == "NvimTree"
end

M.toggle_tree_buffer = function()
  if tree_focused() then
    vim.cmd("wincmd p")
  else
    vim.cmd("NvimTreeFocus")
  end
end

M.close_buffer = function()
  local buffer_count = #vim.fn.getbufinfo({ buflisted = 1 })
  if buffer_count <= 1 then
    vim.cmd("NvimTreeClose")
    vim.cmd("quit")
  else
    vim.cmd("bp|bd #")
  end
end

M.insert_line_above = function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line - 1, current_line - 1, false, { "" })
end

M.insert_line_below = function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line, current_line, false, { "" })
end

M.select_paragraph = function()
  vim.cmd("normal! jvap", { silent = true })
end

M.select_function = function()
  textOjbectSelect.select_textobject("@function.outer", "textobjects", "V")
  vim.cmd("normal! j", { silent = true })
end

M.goto_function_end = function()
  textOjbectMove.goto_next_end("@function.outer", "textobjects")
  vim.cmd("normal! j", { silent = true })
end

return M

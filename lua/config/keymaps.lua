-- Visual Line
vim.keymap.set({ "n", "v" }, "<leader>q", "q", { desc = "Macro" })
vim.keymap.set("n", "q", "V", { desc = "Switch to visual line mode" })
vim.keymap.set("v", "q", "<esc>", { desc = "Exit visual line mode" })

-- Move to Paragraph
vim.keymap.set({ "n", "v" }, ",", "{", { desc = "Move to previous paragraph" })
vim.keymap.set({ "n", "v" }, "m", "}", { desc = "Move to next paragraph" })

-- Scroll
vim.keymap.set({ "n", "v" }, "<D-j>", "15<C-e>M", { desc = "Scroll a few lines down" })
vim.keymap.set({ "n", "v" }, "<D-k>", "15<C-y>M", { desc = "Scroll a few lines up" })

-- Arrow Keys
vim.keymap.set({ "n", "v" }, "<D-Left>", "0", { desc = "Move to the beginning of the line" })
vim.keymap.set({ "n", "v" }, "<D-Right>", "$", { desc = "Move to the end of the line" })
vim.keymap.set({ "n", "v" }, "<D-Up>", "gg0", { desc = "Move to the first line of the file" })
vim.keymap.set({ "n", "v" }, "<D-Down>", "G0", { desc = "Move to the last line of the file" })

-- Tree Focus
vim.keymap.set({ "n" }, "<D-r>", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set({ "i", "v" }, "<D-r>", "<esc><cmd>NvimTreeFocus<CR>")

-- Select All, Save, Close
vim.keymap.set({ "n", "i", "v" }, "<D-a>", "gg0VG", { desc = "Select all" })
vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<cmd>w<CR>", { desc = "Save", silent = true })
vim.keymap.set("n", "<D-d>", function()
  local buffer_count = #vim.fn.getbufinfo({ buflisted = 1 })
  if buffer_count == 1 then
    vim.cmd("NvimTreeClose")
    vim.cmd("quit")
  else
    vim.cmd("bp|bd #")
  end
end, { noremap = true })

-- Copy / Paste
vim.keymap.set({ "v" }, "<D-c>", "y", { desc = "Copy" })
vim.keymap.set({ "n", "v" }, "<D-v>", "p", { desc = "Paste" })
vim.keymap.set({ "i" }, "<D-v>", "<esc>pa", { desc = "Paste" })

-- Comment & Indent
vim.keymap.set({ "n", "i" }, "<D-/>", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<D-/>", "gc", { desc = "Comment block", remap = true })
vim.keymap.set("v", "<D-]>", ">gv", { desc = "Indent right" })
vim.keymap.set("v", "<D-[>", "<gv", { desc = "Indent left" })
vim.keymap.set("n", "<D-]>", "V>gv<esc>", { desc = "Indent right", silent = true })
vim.keymap.set("n", "<D-[>", "V<gv<esc>", { desc = "Indent left", silent = true })

-- Treesitter Shortcuts
vim.keymap.set({ "n" }, "<D-p>", "jvap", { desc = "Select current paragraph" })
vim.keymap.set("v", "<D-p>", "jap", { desc = "Select next paragraph" })
vim.keymap.set({ "n" }, "<D-e>", "vafj", { desc = "Select current function", remap = true })
vim.keymap.set("v", "<D-e>", "]Fj", { desc = "Select next function", remap = true })

-- Telescope Find Files & Grep
local builtin = require("telescope.builtin")
vim.keymap.set({ "n", "i", "v" }, "<D-f>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set({ "n", "i", "v" }, "<D-g>", builtin.live_grep, { desc = "Telescope live grep" })

-- Insert Lines
vim.keymap.set({ "n", "i", "v" }, "<D-u>", function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line, current_line, false, { "" })
end, { silent = true, desc = "Insert line below without moving cursor" })
vim.keymap.set({ "n", "i", "v" }, "<D-i>", function()
  local current_line = vim.fn.line(".")
  vim.api.nvim_buf_set_lines(0, current_line - 1, current_line - 1, false, { "" })
end, { silent = true, desc = "Insert line above without moving cursor" })

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

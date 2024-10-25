require("config/keyfns")
local cmd = keyfns.cmd

vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

vim.keymap.set("n", "q", "V", { desc = "Switch to visual line mode" })
vim.keymap.set("v", "q", "<esc>", { desc = "Exit visual line mode" })
vim.keymap.set({ "n", "v" }, "<leader>q", "q", { desc = "Macro" })

vim.keymap.set({ "n", "v" }, ",", "{", { desc = "Move to previous paragraph" })
vim.keymap.set({ "n", "v" }, "m", "}", { desc = "Move to next paragraph" })

vim.keymap.set({ "n", "v" }, cmd("j"), "15<C-e>M", { desc = "Scroll down" })
vim.keymap.set({ "n", "v" }, cmd("k"), "15<C-y>M", { desc = "Scroll up" })

vim.keymap.set({ "n", "v" }, cmd("Left"), "0", { desc = "Move to the beginning of the line" })
vim.keymap.set({ "n", "v" }, cmd("Right"), "$", { desc = "Move to the end of the line" })
vim.keymap.set({ "n", "v" }, cmd("Up"), "gg0", { desc = "Move to the first line of the file" })
vim.keymap.set({ "n", "v" }, cmd("Down"), "G0", { desc = "Move to the last line of the file" })

vim.keymap.set({ "n" }, cmd("r"), keyfns.toggle_tree_buffer, { desc = "Toggle between tree and buffers" })
vim.keymap.set({ "i", "v" }, cmd("r"), "<esc><D-r>", { desc = "Toggle between tree and buffers", remap = true })

vim.keymap.set({ "n", "i", "v" }, cmd("a"), "gg0VG", { desc = "Select all" })
vim.keymap.set({ "n", "i", "v" }, cmd("s"), "<cmd>w<CR>", { desc = "Save", silent = true })
vim.keymap.set({ "n", "i", "v" }, cmd("d"), keyfns.close_buffer, { desc = "Close buffer", noremap = true })

vim.keymap.set({ "v" }, cmd("c"), "y", { desc = "Copy" })
vim.keymap.set({ "n", "v" }, cmd("v"), "p", { desc = "Paste" })
vim.keymap.set({ "i" }, cmd("v"), "<esc>pa", { desc = "Paste" })

vim.keymap.set({ "n", "i" }, cmd("/"), "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", cmd("/"), "gc", { desc = "Comment block", remap = true })
vim.keymap.set("v", cmd("]"), ">gv", { desc = "Indent right" })
vim.keymap.set("v", cmd("["), "<gv", { desc = "Indent left" })
vim.keymap.set("n", cmd("]"), "V>gv<esc>", { desc = "Indent right", silent = true })
vim.keymap.set("n", cmd("["), "V<gv<esc>", { desc = "Indent left", silent = true })

vim.keymap.set({ "n" }, cmd("p"), "jvap", { desc = "Select current paragraph" })
vim.keymap.set("v", cmd("p"), "jap", { desc = "Select next paragraph" })
vim.keymap.set({ "n" }, cmd("e"), "vafj", { desc = "Select current function", remap = true })
vim.keymap.set("v", cmd("e"), "]Fj", { desc = "Select next function", remap = true })

local builtin = require("telescope.builtin")
vim.keymap.set({ "n", "i", "v" }, cmd("f"), builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set({ "n", "i", "v" }, cmd("g"), builtin.live_grep, { desc = "Telescope live grep" })

vim.keymap.set({ "n", "v" }, "<leader>h", "<cmd>Telescope highlights<CR>", { desc = "Show all highlights" })
vim.keymap.set({ "n", "v" }, "<leader>i", "<cmd>NvimWebDeviconsHiTest<CR>", { desc = "Show all Web Dev Icons" })

vim.keymap.set({ "n", "i", "v" }, cmd("u"), keyfns.insert_line_above, { silent = true, desc = "Insert line above" })
vim.keymap.set({ "n", "i", "v" }, cmd("u"), keyfns.insert_line_below, { silent = true, desc = "Insert line below" })

vim.o.tabstop = 2
--vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.list = true
vim.o.number = true
vim.o.relativenumber = true

vim.o.ignorecase = true
vim.opt.fillchars = { eob = " " }
vim.o.confirm = true
vim.o.swapfile = false
vim.o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

vim.g.nord_italic = false

vim.g.neovide_cursor_animation_length = 0
--vim.g.mousescroll = "ver:1,hor:0"

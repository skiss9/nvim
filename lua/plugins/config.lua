local colors = require("config.colors")
local cmd = require("config.cmd-key")

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "folke/which-key.nvim", event = "VeryLazy" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { cmd("l"), mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        globalstatus = true,
        theme = {
          normal = {
            a = { bg = colors.blue, fg = colors.dark },
            b = { bg = colors.dark3, fg = colors.white },
            c = { bg = colors.dark, fg = colors.white },
          },
          insert = {
            a = { bg = colors.green, fg = colors.dark },
          },
          visual = {
            a = { bg = colors.magenta, fg = colors.white },
          },
        },
      },
    },
  },
  { "rcarriga/nvim-notify" },
  { "folke/noice.nvim", opts = { cmdline = { enabled = true } } },
}

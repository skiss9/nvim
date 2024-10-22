return {
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme nord]])
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        icons = {
          show = {
            file = true,
          },
          glyphs = {
            default = "",
            folder = {
              arrow_closed = "▸",
              arrow_open = "▾",
            },
          },
        },
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = { color_icons = false },
  },
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
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = "auto",
    },
  },
  { "rcarriga/nvim-notify" },
  { "folke/noice.nvim", opts = { cmdline = { enabled = true } } },
  -- Prettier
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      local registry = require("mason-registry")
      if not registry.is_installed("prettier") then
        registry.get_package("prettier"):install()
      end
      if not registry.is_installed("stylua") then
        registry.get_package("stylua"):install()
      end
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "VeryLazy" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        -- python = { "isort", "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
      format_on_save = { timeout_ms = 500 },
    },
  },
}

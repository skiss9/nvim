return {
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

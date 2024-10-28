return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "eslint", "lua_ls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
        },
      })
      lspconfig.eslint.setup({})
      lspconfig.lua_ls.setup({})
    end,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
  },
}

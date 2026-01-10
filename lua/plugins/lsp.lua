return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "eslint", "ts_ls", "svelte", "lua_ls" },
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
      lspconfig.ts_ls.setup({})
      lspconfig.svelte.setup({
        on_attach = function(client)
          -- Create an autocmd that triggers when you save a JS or TS file
          vim.api.nvim_create_autocmd("BufWritePost", {
            pattern = { "*.js", "*.ts" },
            group = vim.api.nvim_create_augroup("SvelteDidChangeTsOrJsFile", { clear = true }),
            callback = function(ctx)
              -- Notify the Svelte language server to recheck types
              client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
            end,
          })
        end,
      })
      lspconfig.lua_ls.setup({})
    end,
  },
}

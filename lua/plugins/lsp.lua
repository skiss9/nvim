return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    config = function()
      vim.diagnostic.config({
        virtual_text = { prefix = "●" },
        float = { border = "rounded" },
        signs = false,
        update_in_insert = false,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        end,
      })

      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      require("mason-lspconfig").setup({
        ensure_installed = { "eslint", "ts_ls", "svelte", "lua_ls" },
        automatic_installation = true,
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({ capabilities = capabilities })
          end,
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = { globals = { "vim" } },
                  workspace = { checkThirdParty = false },
                },
              },
            })
          end,
          ["svelte"] = function()
            lspconfig.svelte.setup({
              capabilities = capabilities,
              on_attach = function(client, bufnr)
                vim.api.nvim_create_autocmd("BufWritePost", {
                  pattern = { "*.js", "*.ts" },
                  group = vim.api.nvim_create_augroup("svelte_ondidchangetsorjsfile", { clear = true }),
                  callback = function(ctx)
                    client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
                  end,
                })
              end,
            })
          end,
        },
      })
    end,
  },
}

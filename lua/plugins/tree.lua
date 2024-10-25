return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      update_focused_file = {
        enable = true,
      },
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
            folder = {
              -- default = "",
              -- open = "",
              -- arrow_closed = "▸",
              -- arrow_open = "▾",
              arrow_closed = " ",
              arrow_open = " ",
            },
          },
        },
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "L", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    },
    config = function()
      local bufferline = require("bufferline")
      bufferline.setup({
        options = {
          mode = "buffers",
          offsets = {
            {
              filetype = "NvimTree",
              highlight = "NvimTreeHeader",
            },
          },
          show_buffer_icons = false,
          style_preset = {
            bufferline.style_preset.no_italic,
            bufferline.style_preset.no_bold,
          },
        },
      })
    end,
  },
}

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
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "L", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    },
    opts = {
      options = {
        mode = "buffers",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
  },
}

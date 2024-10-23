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
}

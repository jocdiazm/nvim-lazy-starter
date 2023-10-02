return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      separator_style = { "", "" },
      indicator = { style = "none" },
      show_tab_indicators = false,

      always_show_bufferline = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
      -- separator_style = { "", "" },
      tab_size = 0,
      max_name_length = 25,
      offsets = {
        {
          filetype = "neo-tree",
          text = "  Project",
          highlight = "Directory",
          text_align = "left",
        },
      },
      modified_icon = "",
    },
  },
}

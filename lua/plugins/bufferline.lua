return {
  "akinsho/bufferline.nvim",
  enable = false,
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      -- stylua: ignore start/end
      options = {
        separator_style = { "", "" },
        indicator = { style = "none" },
        show_tab_indicators = false,
        always_show_bufferline = true,
        show_close_icon = false,
        show_buffer_close_icons = true,
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
      },
    })
  end,
  opts = {},
  event = "VeryLazy",
  after = "catppuccin",
}

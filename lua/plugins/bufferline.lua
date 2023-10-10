return {
  "akinsho/bufferline.nvim",
  enabled = true,
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      always_show_bufferline = true,
      truncate_names = true,
      separator_style = { "", "" },
      show_buffer_close_icons = false,
      indicator = { style = "none" },
      style_preset = require("bufferline").style_preset.minimal, -- or bufferline.style_preset.minimal,
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
      modified_icon = "",
    },
  },
  event = "VeryLazy",
  after = "catppuccin",
  keys = function()
    return {
      -- disable the keymap to grep files
      -- {"<leader>/", false},
      -- change a keymap
      {
        "<leader>bD",
        false,
      },
      {
        "<leader>bp",
        function()
          require("bufferline").close_with_pick()
        end,
        desc = "Close buffer with pick",
      },
      {
        "<leader>bC",
        function()
          require("bufferline").close_others()
        end,
        desc = "Close all other buffers",
      },
      -- add a keymap to browse plugin files
    }
  end,
}

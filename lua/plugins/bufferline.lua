local mocha = require("catppuccin.palettes").get_palette("mocha")
-- stylua: ignore start/end
return {
  "akinsho/bufferline.nvim",
  config = function()
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "italic", "bold" },
        custom = {
          all = {
            fill = {
              -- bg = "#000000",
              bg = "#1e1e2e",
            },
          },
          mocha = {
            background = { fg = mocha.text, bg = "#1e1e2e" },
          },
          latte = {
            background = { fg = "#000000" },
          },
        },
      }),
    })
  end,
  event = "VeryLazy",
  after = "catppuccin",
}
-- event = "VeryLazy",
-- version = "*",
-- dependencies = "nvim-tree/nvim-web-devicons",
-- opts = {
--   options = {
--     separator_style = { "", "" },
--     indicator = { style = "none" },
--     show_tab_indicators = false,
--     always_show_bufferline = true,
--     show_close_icon = false,
--     show_buffer_close_icons = true,
--     tab_size = 0,
--     max_name_length = 25,
--     offsets = {
--       {
--         filetype = "neo-tree",
--         text = "  Project",
--         highlight = "Directory",
--         text_align = "left",
--       },
--     },
--   },
-- },

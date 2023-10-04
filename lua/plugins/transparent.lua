local prefix = "<leader>u"

return {
  "xiyaowong/transparent.nvim",
  enabled = true,
  lazy = false,
  opts = function()
    require("catppuccin").setup({ transparent = vim.g.transparent_enabled })
    require("transparent").clear_prefix("BufferLine")
    -- require("transparent").clear_prefix("lualine")
    require("transparent").clear_prefix("NeoTree")
    return {
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLineNr",
        "EndOfBuffer",
      },
      -- table: additional groups that should be cleared
      extra_groups = {
        -- "NormalFloat",
        -- "NvimTreeNormal",
        -- "NeoTreeNormal",
        -- "NeoTreeFloatBorder",
        -- "NeoTreeNormalNC",
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",

        "IndentBlanklineChar",
        -- make floating windows transparent
        "LspFloatWinNormal",
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptBorder",
        "SagaBorder",
        "SagaNormal",
      },
      -- table: groups you don't want to clear
      exclude_groups = {
        -- "Normal",
        -- "NormalFloat",
      },
    }
  end,

  -- table: default groups

  keys = {
    { prefix .. "T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
  },
}

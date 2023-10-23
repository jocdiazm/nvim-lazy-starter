return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = "hard"
      -- vim.g.gruvbox_material_transparent_background = 1
    end,
  },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

  {
    "AstroNvim/astrotheme",
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {},
  },
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd.colorscheme("night-owl")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    name = "Kanagawa",
    config = function()
      require("kanagawa").setup({
        overrides = function(colors)
          local theme = colors.theme
          return {
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
      -- vim.cmd("colorscheme kanagawa-wave")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      colors = {
        -- Overrides.
        bg = "#0E1419",
        -- bright_red = '#EC6A88',
        comment = "#B08BBB",
        -- orange = '#FFBFA9',
        -- red = '#E95678',
        selection = "#3C4148",
        -- -- Some extra colors.
        -- fuchsia = '#E11299',
        -- grey = '#A9ABAC',
        -- lavender = '#6272A4',
        -- lilac = '#6D5978',
        -- transparent_blue = '#19272C',
        -- transparent_red = '#342231',
        -- transparent_yellow = '#202624',
      },
      italic_comment = false,
    },
    config = function(_, opts)
      require("dracula").setup(opts)
      -- vim.cmd("colorscheme dracula")
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    name = "everforest",
    config = function()
      vim.o.background = "dark"
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 0
      vim.g.everforest_ui_contrast = "high"
      vim.g.everforest_float_style = "dim"
      -- vim.g.everyforest_transparent_background = 1

      vim.g.everforest_better_performance = 1
      -- vim.cmd("colorscheme everforest")
    end,
  },
  {
    "kjssad/quantum.vim",
    priority = 1000,
    opts = {
      style = {
        italics = { -- whether to use italic for the following highlight groups
          comments = true,
          variables = true,
          functions = false,
          keywords = false,
        },
      },
      hide_end_of_buffer = true, -- whether to show hl-EndOfBuffer
      colors = {}, -- override specific highlight groups
      variant = "default", -- configure variant to use: default, dark, or light
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
    },
  },
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = false,
    priority = 1000,
    opts = {
      style = "dark",
      transparent = false,
    },
  },

  { "EdenEast/nightfox.nvim", name = "nightfox", priority = 1000, opts = {} },

  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    opts = {
      --opts
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

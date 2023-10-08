return {
  {
    "folke/persistence.nvim",
    enabled = false,
    event = "BufReadPre",
    opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" } },
  -- stylua: ignore
  keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
  },
  {
    "rmagatti/auto-session",
    enabled = true,
    event = "BufReadPre",
    opts = {
      log_level = "error",
    },
    keys = {
      -- {
      --   "<leader>Sf",
      --   "<Cmd>Autosession search<Cr>",
      --   desc = "Load a session",
      -- },
      {
        "<leader>Sd",
        "<Cmd>Autosession delete<Cr>",
        desc = "Delete a session",
      },
    },
  },
  {
    "rmagatti/session-lens",
    enabled = true,
    event = "BufReadPre",
    opts = {
      previewer = false,
      theme_conf = { border = true, bg = false },
    },
    keys = {
      {
        "<leader>Sf",
        function()
          require("session-lens").search_session()
        end,
        desc = "Load a session",
      },
    },
  },
  {
    "stevearc/resession.nvim",
    event = "BufReadPre",
    enabled = false,
    opts = {
      autosave = {
        enabled = true,
        interval = 60,
      },
    },
    keys = {
      {
        "<leader>Sl",
        function()
          require("resession").load("last")
        end,
        desc = "Load last session",
      },
      {
        "<leader>Ss",
        function()
          require("resession").save()
        end,
        desc = "Save this session",
      },
      {
        "<leader>St",
        function()
          require("resession").save_tab()
        end,
        desc = "Save this tab's session",
      },
      {
        "<leader>Sd",
        function()
          require("resession").delete()
        end,
        desc = "Delete a session",
      },
      {
        "<leader>Sf",
        function()
          require("resession").load()
        end,
        desc = "Load a session",
      },
      {
        "<leader>S.",
        function()
          require("resession").load(vim.fn.getcwd(), { dir = "dirsession" })
        end,
        desc = "Load current directory session",
      },
    },
  },
  {
    "Shatur/neovim-session-manager",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    keys = {
      {
        "<leader>Sl",
        function()
          require("session_manager").load_last_session()
        end,
        desc = "Load last session",
      },
      {
        "<leader>Ss",
        function()
          require("session_manager").save_current_session()
        end,
        desc = "Save this session",
      },
      {
        "<leader>Sd",
        function()
          require("session_manager").delete_session()
        end,
        desc = "Delete a session",
      },
      {
        "<leader>Sf",
        function()
          require("session_manager").load_session()
        end,
        desc = "Load a session",
      },
      {
        "<leader>S.",
        function()
          require("session_manager").load_current_dir_session()
        end,
        desc = "Load current directory session",
      },
    },
  },
}

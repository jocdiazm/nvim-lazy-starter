return {
  {
    "folke/persistence.nvim",
    enabled = false,
    event = "BufReadPre",
  },
  {
    "rmagatti/auto-session",
    enabled = false,
    event = "BufReadPre",
    opts = {
      log_level = "error",
      auto_session_enabled = true,
      auto_session_create_enabled = true,
      auto_save_enabled = nil,
      -- auto_session_enable_last_session = vim.loop.cwd() == vim.loop.os_homedir(),
      -- auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
    },
  },
  {
    "rmagatti/session-lens",
    enabled = false,
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
        enabled = false,
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
    enabled = true,
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

return {
  -- {
  --   "rmagatti/auto-session",
  --   enabled = false,
  --   event = "BufReadPre",
  --   opts = {
  --     log_level = "error",
  --     auto_session_enabled = true,
  --     auto_session_create_enabled = true,
  --     auto_session_enable_last_session = true,
  --     auto_restore_enabled = true,
  --   },
  --   keys = {
  --     {
  --       "<leader>Sd",
  --       "<Cmd>Autosession delete<Cr>",
  --       desc = "Delete a session",
  --     },
  --   },
  -- },
  -- {
  --   "rmagatti/session-lens",
  --   enabled = false,
  --   event = "BufReadPre",
  --   opts = {
  --     previewer = false,
  --     theme_conf = { border = true, bg = false },
  --   },
  --   keys = {
  --     {
  --       "<leader>Sf",
  --       function()
  --         require("session-lens").search_session()
  --       end,
  --       desc = "Load a session",
  --     },
  --   },
  -- },
  -- {
  --   "stevearc/resession.nvim",
  --   event = "BufReadPre",
  --   version = false,
  --   enabled = false,
  --   opts = {
  --     autosave = {
  --       enabled = true,
  --       cwd = true,
  --       interval = 60,
  --       -- Notify when autosaved
  --       notify = true,
  --     },
  --     options = {
  --       "binary",
  --       "bufhidden",
  --       "buflisted",
  --       "cmdheight",
  --       "diff",
  --       "filetype",
  --       "modifiable",
  --       "previewwindow",
  --       "readonly",
  --       "scrollbind",
  --       "winfixheight",
  --       "winfixwidth",
  --     },
  --     dir = "resession",
  --     load_detail = true,
  --     load_order = "modification_time",
  --   },
  --   keys = {
  --     {
  --       "<leader>Sl",
  --       function()
  --         require("resession").load("last")
  --       end,
  --       desc = "Load last session",
  --     },
  --     {
  --       "<leader>Ss",
  --       function()
  --         require("resession").save()
  --       end,
  --       desc = "Save this session",
  --     },
  --     {
  --       "<leader>St",
  --       function()
  --         require("resession").save_tab()
  --       end,
  --       desc = "Save this tab's session",
  --     },
  --     {
  --       "<leader>Sd",
  --       function()
  --         require("resession").delete()
  --       end,
  --       desc = "Delete a session",
  --     },
  --     {
  --       "<leader>Sf",
  --       function()
  --         require("resession").load()
  --       end,
  --       desc = "Load a session",
  --     },
  --     {
  --       "<leader>S.",
  --       function()
  --         require("resession").load(vim.fn.getcwd(), { dir = "dirsession" })
  --       end,
  --       desc = "Load current directory session",
  --     },
  --   },
  -- },
  {
    "Shatur/neovim-session-manager",
    event = "BufReadPre",
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
          ---@diagnostic disable-next-line: missing-parameter
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
  -- {
  --   "jedrzejboczar/possession.nvim",
  --   event = "BufReadPre",
  --   enabled = false,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   opts = {
  --     debug = true,
  --     prompt_no_cr = true,
  --     telescope = {
  --       list = {
  --         default_action = "load",
  --       },
  --     },
  --   },
  --   keys = {
  --     {
  --       "<leader>Ss",
  --       function()
  --         -- local fname = vim.fn.input(" name")
  --         local session = require("possession.session")
  --         session.save("temp")
  --       end,
  --       desc = "Save this session",
  --     },
  --     {
  --       "<leader>Sd",
  --       function()
  --         require("telescope").extensions.possession.list({
  --           default_action = "delete",
  --         })
  --       end,
  --       desc = "Delete a session",
  --     },
  --     {
  --       "<leader>Sf",
  --       function()
  --         require("telescope").extensions.possession.list()
  --       end,
  --       desc = "Load a session",
  --     },
  --     {
  --       "<leader>S.",
  --       function()
  --         require("session_manager").load_current_dir_session()
  --       end,
  --       desc = "Load current directory session",
  --     },
  --   },
  -- },
  -- {
  --   "gennaro-tedesco/nvim-possession",
  --   enabled = false,
  --   dependencies = {
  --     "ibhagwan/fzf-lua",
  --   },
  --   config = true,
  --   init = function()
  --     local possession = require("nvim-possession")
  --     vim.keymap.set("n", "<leader>Sf", function()
  --       possession.list()
  --     end, { desc = "Load session" })
  --     vim.keymap.set("n", "<leader>Ss", function()
  --       possession.new()
  --     end, { desc = "Save session" })
  --     vim.keymap.set("n", "<leader>Su", function()
  --       possession.update()
  --     end, { desc = "Update a session" })
  --     vim.keymap.set("n", "<leader>Sd", function()
  --       possession.delete()
  --     end, { desc = "Delete a session" })
  --   end,
  -- },
  -- {
  --   "olimorris/persisted.nvim",
  --   enabled = false,
  --   priority = 900,
  --   config = true,
  --   opts = {},
  -- },
}

return {

  {
    "folke/persistence.nvim",
    enabled = false,
    event = "BufReadPre",
  },
  {
    "stevearc/resession.nvim",
    event = "BufReadPre",
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
}

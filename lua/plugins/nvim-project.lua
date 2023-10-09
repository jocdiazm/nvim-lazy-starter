return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/.config/neovim",
      "~/github/personal/wedding/wedding-site/",
      "~/learning/frontendmasters/*",
      "~/provectus/*",
      "~/provectus/supply-chain-core/frontend",
      "~/provectus/supply-chain-core/backend",
    },
    last_session_on_startup = false,
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.3" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  keys = {
    {
      "<leader>Pd",
      "<Cmd>Telescope neovim-project discover<CR>",
      desc = "Project discover",
    },
    {
      "<leader>Ph",
      "<Cmd>Telescope neovim-project history<CR>",
      desc = "Project history",
    },
    {
      "<leader>Pl",
      "NeovimProjectLoadRecent",
      desc = "Load last Project",
    },
  },
}

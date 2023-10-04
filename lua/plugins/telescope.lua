return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { -- add a new dependency to telescope that is our new plugin
      "nvim-telescope/telescope-media-files.nvim",
      -- "rmagatti/session-lens",
    },
    config = function(plugin, opts)
      -- run the core AstroNvim configuration function with the options table
      -- require telescope and load extensions as necessary
      local telescope = require("telescope")
      telescope.load_extension("media_files")
      -- telescope.load_extension("session-lens")
      telescope.setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            "venv",
            "__pycache__",
          },
          select_strategy = "reset",
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
            preview_cutoff = 120,
          },
        },
      })
    end,
    keys = function()
      return {
        -- disable the keymap to grep files
        -- {"<leader>/", false},
        -- change a keymap
        {
          "<leader>ff",
          function()
            require("telescope.builtin").find_files()
          end,
          desc = "Find Files",
        },
        -- add a keymap to browse plugin files
        {
          "<leader>fb",
          function()
            require("telescope.builtin").buffers()
          end,
          desc = "Find buffers",
        },
        {
          "<leader>fc",
          function()
            require("telescope.builtin").grep_string()
          end,
          desc = "Find word under cursor",
        },
        {
          "<leader>fC",
          function()
            require("telescope.builtin").commands()
          end,
          desc = "Find commands",
        },
        {
          "<leader>fo",
          function()
            require("telescope.builtin").oldfiles()
          end,
          desc = "Find history",
        },
        {
          "<leader>fr",
          function()
            require("telescope.builtin").registers()
          end,
          desc = "Find registers",
        },

        {
          "<leader>ft",
          function()
            require("telescope.builtin").colorscheme({ enable_preview = true })
          end,
          desc = "Find themes",
        },
        {
          "<leader>fw",
          function()
            require("telescope.builtin").live_grep()
          end,
          desc = "Find words",
        },
        {
          "<leader>fW",
          function()
            require("telescope.builtin").live_grep({
              additional_args = function(args)
                return vim.list_extend(args, { "--hidden", "--no-ignore" })
              end,
            })
          end,
          desc = "Find words in all files",
        },
        --
        {
          "<leader>fF",
          function()
            require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
          end,
          desc = "Find all files",
        },
        -- maps.n["<leader>fh"] = { function() require("telescope.builtin").help_tags() end, desc = "Find help" },
        -- maps.n["<leader>fk"] = { function() require("telescope.builtin").keymaps() end, desc = "Find keymaps" },
      }
    end,
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",

    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = function()
      return {
        {
          "<leader>fB",
          ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        },
      }
    end,
  },
}

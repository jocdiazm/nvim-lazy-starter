-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- better up/down

-- This file is automatically loaded by lazyvim.config.init

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end
-- Adding moving lines with metaf

map("i", "<M-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down", noremap = true })
map("i", "<M-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up", noremap = true })
map("n", "<M-j>", "<cmd>m .+1<cr>==", { desc = "Move down", noremap = true })
map("n", "<M-k>", "<cmd>m .-2<cr>==", { desc = "Move up", noremap = true })
map("v", "<M-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<M-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
map("n", "<M-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<M-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Buffers
map("n", "<leader>bD", "<cmd>BufferLineCloseOthers<cr>", { desc = "Close all other bufferssss" })
--Smooth scrolling    -- smooth scrolling
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

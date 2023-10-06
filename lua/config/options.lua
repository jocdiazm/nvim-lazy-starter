-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

opt.scrolloff = 15 --Nice lines centering
opt.swapfile = false --No nasty swapfiles
opt.pumblend = 0 -- No highlight
opt.cursorline = false -- No highlight
opt.conceallevel = 0 -- No hiding quotes in json files
opt.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize"

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Only load the session if nvim was started with no args
--     if vim.fn.argc(-1) == 0 then
--       -- Save these to a different directory, so our manual sessions don't get polluted
--       require("resession").load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
--     end
--   end,
-- })
-- vim.api.nvim_create_autocmd("VimLeavePre", {
--   callback = function()
--     require("resession").save(vim.fn.getcwd(), { dir = "dirsession", notify = false })
--   end,
-- })

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.cmd("highlight! BorderBG guibg=NONE guifg=#00ff00")
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("VimLeavePre", {
--   callback = function()
--     -- Always save a special session named "last"
--     require("resession").save("last")
--   end,
-- })

local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands
-- Important: This will close anything non-buffer,
-- including notifications, neotree, aerial...
-- So if you need to keep them open, use 'VimLeavePre'.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = config_group,
  callback = function()
    if vim.bo.filetype ~= "git" and not vim.bo.filetype ~= "gitcommit" and not vim.bo.filetype ~= "gitrebase" then
      require("session_manager").save_current_session()
    end
  end,
})

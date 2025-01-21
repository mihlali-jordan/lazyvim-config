-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Remap pane navigation
map("n", "<Tab>h", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<Tab>j", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<Tab>k", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<Tab>l", "<C-w>l", { desc = "Go to Right Window" })

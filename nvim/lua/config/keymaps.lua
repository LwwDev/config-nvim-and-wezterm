-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--#region
--
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- Better window movement
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Clear search
keymap.set("n", "<Esc>", "<cmd>noh<CR>")

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<C-z>", "u")
vim.keymap.set("i", "<C-z>", "<Esc>ui")

vim.keymap.set("n", "<C-y>", "<C-r>")
vim.keymap.set("i", "<C-y>", "<Esc><C-r>a")
vim.keymap.set("i", "<C-h>", "<C-w>")

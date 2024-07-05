--.__    ____            /\          ___________   ____.___   _____ ___________________
--|  |__/_   | ____   ___)/  ______  \      \   \ /   /|   | /     \\______   \_   ___ \
--|  |  \|   |/    \_/ __ \ /  ___/  /   |   \   Y   / |   |/  \ /  \|       _/    \  \/
--|   Y  \   |   |  \  ___/ \___ \  /    |    \     /  |   /    Y    \    |   \     \____
--|___|  /___|___|  /\___  >____  > \____|__  /\___/   |___\____|__  /____|_  /\______  /
--     \/         \/     \/     \/          \/                     \/       \/        \/

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.o.number = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

local function HardMode()
  vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true })
end

local function EasyMode()
  vim.api.nvim_set_keymap("n", "<Up>", "<Up>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Down>", "<Down>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Left>", "<Left>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<Right>", "<Right>", { noremap = true })
end

HardMode()

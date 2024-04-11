-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

" .__    ____            /\         ____   ____.___   _____ ___________________
" |  |__/_   | ____   ___)/  ______ \   \ /   /|   | /     \\______   \_   ___ \
" |  |  \|   |/    \_/ __ \ /  ___/  \   Y   / |   |/  \ /  \|       _/    \  \/
" |   Y  \   |   |  \  ___/ \___ \    \     /  |   /    Y    \    |   \     \____
" |___|  /___|___|  /\___  >____  >    \___/   |___\____|__  /____|_  /\______  /
"      \/         \/     \/     \/                         \/       \/        \/

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 4

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {silent = true})

vim.cmd 'colorscheme slate'

local function HardMode()
  vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', {})
  vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', {})
  vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', {})
  vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', {})
end

local function EasyMode()
  vim.api.nvim_set_keymap('n', '<Up>', '<Up>', {})
  vim.api.nvim_set_keymap('n', '<Down>', '<Down>', {})
  vim.api.nvim_set_keymap('n', '<Left>', '<Left>', {})
  vim.api.nvim_set_keymap('n', '<Right>', '<Right>', {})
end

HardMode()


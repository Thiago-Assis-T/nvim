vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local opts = { silent = true, noremap = true }
-- Telescope Remaps:
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ft', '<cmd>Telescope git_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>Telescope grep_string<cr>', opts)
vim.api.nvim_set_keymap('n', '<space>fb', '<cmd>Telescope file_browser<cr>', opts)

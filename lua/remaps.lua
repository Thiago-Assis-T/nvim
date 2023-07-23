vim.g.mapleader = ' '
local opts = { silent = true, noremap = true }
-- Telescope Remaps:
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope git_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>Telescope diagnostics<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope grep_string<cr>', opts)
vim.api.nvim_set_keymap('n', '<space>fb', '<cmd>Telescope file_browser<cr>', opts)

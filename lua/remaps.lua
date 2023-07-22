vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { silent = true, noremap = true })

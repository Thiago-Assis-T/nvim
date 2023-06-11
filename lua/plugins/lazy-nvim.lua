local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
   {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {                                      -- Optional
         'williamboman/mason.nvim',
         build = function()
            pcall(vim.cmd, 'MasonUpdate')
         end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
   }
},
--  {
--     'williamboman/mason.nvim',
--     build = ':MasonUpdate' -- :MasonUpdate updates registry contents
--  },
--  {
--     'williamboman/mason-lspconfig.nvim',
--  },
--  {
--     'neovim/nvim-lspconfig',
-- },
{
   'nvim-neo-tree/neo-tree.nvim',
   dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
   }
},
   {
      'folke/tokyonight.nvim',
      lazy = false,
      priority = 1000,
      opts = {},
   },
   {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate'
   }
})

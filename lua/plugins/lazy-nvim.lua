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
      'neovim/nvim-lspconfig',
   },
   {
      'williamboman/mason.nvim',
      build = ':MasonUpdate' -- :MasonUpdate updates registry contents
   },
   {
      'williamboman/mason-lspconfig.nvim',
   },
   {
      'hrsh7th/nvim-cmp'
   },
   {
      'hrsh7th/cmp-nvim-lsp'
   },
   {
      'L3MON4D3/LuaSnip'
   },
   {
      'jose-elias-alvarez/null-ls.nvim',
      dependencies ={
         'nvim-lua/plenary.nvim'
      }
   },
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

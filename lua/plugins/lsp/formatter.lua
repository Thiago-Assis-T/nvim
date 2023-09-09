-- Utilities for creating configurations
local cmd = vim.cmd
local api = vim.api

-- Creating Format on Save functionality:
api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.schedule(function()
      cmd('FormatWrite')
    end)
  end,
})

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require('formatter').setup({
  -- Enable or disable logging
  logging = false,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require('formatter.filetypes.lua').stylua,
    },
    html = {
      require('formatter.filetypes.html').prettierd,
    },
    css = {
      require('formatter.filetypes.css').prettierd,
    },
    javascript = {
      require('formatter.filetypes.javascript').eslint_d,
    },
    javascriptreact = {
      require('formatter.filetypes.javascriptreact').eslint_d,
    },
    typescript = {
      require('formatter.filetypes.typescript').eslint_d,
    },
    typescriptreact = {
      require('formatter.filetypes.typescriptreact').eslint_d,
    },
    json = {
      require('formatter.filetypes.json').prettierd,
    },
    bash = {
      require('formatter.filetypes.sh').shfmt,
    },
    yaml = {
      require('formatter.filetypes.yaml').yamlfmt,
    },
    go = {
      require('formatter.filetypes.go').gofumpt,
      require('formatter.filetypes.go').goimports,
      require('formatter.filetypes.go').golines,
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ['*'] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require('formatter.filetypes.any').remove_trailing_whitespace,
    },
  },
})

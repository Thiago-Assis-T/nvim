local lspconfig = require('lspconfig')
local util = require('lspconfig/util')

--vim.api.nvim_create_autocmd('BufWritePre', {
--  pattern = '*.go',
--  callback = function()
--    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
--  end,
--})

lspconfig.gopls.setup({
  cmd = { 'gopls', 'serve' },
  root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

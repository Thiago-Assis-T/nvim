vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { 'source.organizeImports' } },
    })
  end,
})

require('lspconfig').gopls.setup({
  cmd = { 'gopls', 'serve' },
  filetypes = { 'go', 'gomod' },
  root_dir = require('lspconfig/util').root_pattern('go.work', 'go.mod', '.git'),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

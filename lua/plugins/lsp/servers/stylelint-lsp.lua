local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.stylelint_lsp.setup({
   capabilities = capabilities,
   filetypes = { 'css' },
   settings = {
      stylelintplus = {
         enable = true,
         autoFixOnFormat = true,
         autoFixOnSave = true,
         validateOnSave = true,
         validateOnType = true,
      },
   },
})

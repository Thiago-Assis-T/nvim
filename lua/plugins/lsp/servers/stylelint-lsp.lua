local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.stylelint_lsp.setup({
   capabilities = capabilities,
   settings = {
      stylelintplus = {},
   },
})

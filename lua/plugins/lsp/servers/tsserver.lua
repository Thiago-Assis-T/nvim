local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.tsserver.setup({
   capabilities = capabilities,
   filetypes = {
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
   },
   settings = {
      completions = {
         completeFunctionCalls = true,
      },
   },
})
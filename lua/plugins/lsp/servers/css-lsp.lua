--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').cssls.setup({
   capabilities = capabilities,
   css = {
      validate = true,
   },
   less = {
      validate = true,
   },
   scss = {
      validate = true,
   },
   sass = {
      validate = true,
   },
})
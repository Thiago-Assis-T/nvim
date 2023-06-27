require('mason').setup()
require('mason-lspconfig').setup({
   ensure_installed = { 'cssls', 'html', 'lua_ls' },
})

require('mason').setup()
require('mason-lspconfig').setup({
   ensure_installed = {'html', 'cssls', 'lua_ls' },
})

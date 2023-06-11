require('mason').setup()
require('mason-lspconfig').setup({
   ensure_installed = { "lua_ls" }
})
require('plugins.lsp.servers.lua-lsp')

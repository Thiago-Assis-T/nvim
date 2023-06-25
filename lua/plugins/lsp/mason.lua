require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'stylua', 'luacheck', 'lua_ls' },
})

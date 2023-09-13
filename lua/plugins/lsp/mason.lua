require('mason').setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})
require('mason-lspconfig').setup({})
require('mason-tool-installer').setup({
  ensure_installed = {
    -- Go Stuff:
    'gofumpt',
    'golines',
    'goimports',
    'gopls',
    'golangci-lint',
    -- Lua Stuff:
    'luacheck',
    'stylua',
    'lua_ls',
    -- Shell Scripting stuff:
    'bashls',
    'shellharden',
    'shellcheck',
    -- Front Garbage Stuff:
    'yamlls',
    'yamllint',
    'prettier',
    'emmet_ls',
    'tsserver',
    'eslint',
    'jsonls',
    'cssls',
    'html',
  },
  auto_update = true,
})

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
      'eslint_d',
      'prettierd',
      'luacheck',
      'stylua',
      'lua_ls',
      'emmet_ls',
      'tsserver',
      'eslint',
      'stylelint_lsp',
      'jsonls',
      'cssls',
      'html',
      'bashls',
      'shellharden',
      'shellcheck',
      'custom-elements-languageserver',
   },
   auto_update = true,
})

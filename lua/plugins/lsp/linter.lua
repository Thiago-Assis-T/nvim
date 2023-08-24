require('lint').linters_by_ft = {
   lua = { 'luacheck' },
   javascript = { 'eslint_d' },
   typescript = { 'eslint_d' },
   javascriptreact = { 'eslint_d' },
   typescriptreact = { 'eslint_d' },
   bash = { 'shellcheck' },
   yaml = { 'yamllint' },
   css = { 'stylelint' },
   scss = { 'stylelint' },
   sass = { 'stylelint' },
   less = { 'stylelint' },
}
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
   callback = function()
      require('lint').try_lint()
   end,
})

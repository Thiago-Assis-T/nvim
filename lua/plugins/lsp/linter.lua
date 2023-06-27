require('lint').linters_by_ft = {
   lua = { 'luacheck' },
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

require('lint').linters_by_ft = {
  lua = { 'luacheck' },
  javascript = { 'eslint' },
  typescript = { 'eslint' },
  javascriptreact = { 'eslint' },
  typescriptreact = { 'eslint' },
  bash = { 'shellcheck' },
  yaml = { 'yamllint' },
  css = { 'stylelint' },
  scss = { 'stylelint' },
  sass = { 'stylelint' },
  less = { 'stylelint' },
  go = { 'golangcilint' },
}
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    require('lint').try_lint()
  end,
})

local function colorMyThing(color)
   color = color or 'tokyonight-night'
   vim.cmd.colorscheme(color)

   vim.api.nvim_set_hl(0, 'normal', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'NormalFloat', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'NormalNC', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'WinSeparator', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'StatusLine', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'StatusLineNC', {bg = 'none'})
   vim.api.nvim_set_hl(0, 'SignColumn', {bg = 'none'})

end

colorMyThing()

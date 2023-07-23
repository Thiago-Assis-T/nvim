require('telescope').setup({
   extensions = {
      file_browser = {
         theme = 'dropdown',
         hijack_netrw = true,
      },
   },
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

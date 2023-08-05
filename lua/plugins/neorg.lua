require('neorg').setup({
   load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.concealer'] = {
         config = {
            folds = true,
            icon_preset = 'varied',
         },
      }, -- Adds pretty icons to your documents
      ['core.dirman'] = { -- Manages Neorg workspaces
         config = {
            workspaces = {
               work = '~/Desktop/Notes/Work',
               study = '~Desktop/Notes/Study',
            },
         },
      },
      ['core.completion'] = {
         config = {
            engine = 'nvim-cmp',
         },
      },
   },
})

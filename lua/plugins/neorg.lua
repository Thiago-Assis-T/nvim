require('neorg').setup({
   load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.concealer'] = { -- Adds pretty icons to your documents
         config = {
            icon_preset = 'diamond',
         },
      },
      ['core.dirman'] = { -- Manages Neorg workspaces
         config = {
            workspaces = {
               Study = '~/Desktop/Notes/Study',
               Trybe = '~/Desktop/Notes/Trybe',
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

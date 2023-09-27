-- Set up nvim-cmp.
local cmp = require('cmp')

local kind_icons = {
  Text = '󰈚',
  Method = '',
  Function = '󰊕',
  Constructor = '󱌣',
  Field = '󰽐',
  Variable = '',
  Class = '',
  Interface = '',
  Module = '󰕳',
  Property = '',
  Unit = '󱍓',
  Value = '󰎠',
  Enum = '',
  Keyword = '',
  Snippet = '',
  Color = '',
  File = '󰈙',
  Reference = '',
  Folder = '',
  EnumMember = '',
  Constant = '',
  Struct = '',
  Event = '',
  Operator = '',
  TypeParameter = '󰉺',
}

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer', keyword_length = 5 },
  }),
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
      vim_item.menu = ({
        nvim_lsp = '[LSP]',
        luasnip = '[Snippet]',
        buffer = '[Buffer]',
        path = '[Path]',
      })[entry.source.name]
      return vim_item
    end,
  },
})
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['lua_ls'].setup({ capabilities = capabilities })
require('lspconfig')['gopls'].setup({ capabilities = capabilities })
require('lspconfig')['html'].setup({ capabilities = capabilities })
require('lspconfig')['eslint'].setup({ capabilities = capabilities })
require('lspconfig')['tsserver'].setup({ capabilities = capabilities })
require('lspconfig')['emmet_ls'].setup({ capabilities = capabilities })
require('lspconfig')['bashls'].setup({ capabilities = capabilities })
require('lspconfig')['jsonls'].setup({ capabilities = capabilities })
require('lspconfig')['yamlls'].setup({ capabilities = capabilities })
require('lspconfig')['cssls'].setup({ capabilities = capabilities })

require('neo-tree').setup({
    window = {
        position = 'left',
        width = 25,
        mapping_options = { noremap = true, nowait = true },
    },

    default_component_configs = {
        filesystem = {
            filtered_items = {
                visible = false, -- when true, they will just be displayed differently than normal items
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false, -- only works on Windows for hidden files/directories
            },
        },
        icon = { folder_empty = '', folder_empty_open = '' },
        git_status = { symbols = { renamed = '󰑕', unstaged = '' } },
    },
    document_symbols = {
        kinds = {
            File = { icon = '󰈙', hl = 'Tag' },
            Namespace = { icon = '', hl = 'Include' },
            Package = { icon = '', hl = 'Label' },
            Class = { icon = '', hl = 'Include' },
            Property = { icon = '', hl = '@property' },
            Enum = { icon = '', hl = '@number' },
            Function = { icon = '󰊕', hl = 'Function' },
            String = { icon = '', hl = 'String' },
            Number = { icon = '󰎠', hl = 'Number' },
            Array = { icon = '', hl = 'Type' },
            Object = { icon = '󰅩', hl = 'Type' },
            Key = { icon = '', hl = '' },
            Struct = { icon = '', hl = 'Type' },
            Operator = { icon = '', hl = 'Operator' },
            TypeParameter = { icon = '', hl = 'Type' },
            StaticMethod = { icon = '', hl = 'Function' },
        },
    },
    -- Other options ...
    event_handlers = {
        {
            event = 'file_opened',
            handler = function()
                -- auto close
                require('neo-tree').close_all()
            end,
        },
    },
})

local cmp = require("cmp")
require("cmp").setup({
    sources = {
        { name = "nvim_lsp" },
    },
    window = {
        completion = {
            border = "rounded",
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
            zindex = 1001,
            scrolloff = 0,
            col_offset = 0,
            side_padding = 1,
        },
        documentation = {
            border = "rounded",
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
            zindex = 1001,
            scrolloff = 0,
            col_offset = 0,
            side_padding = 1,
        },
    },
    mapping = cmp.mapping.preset.insert({
        ["<c-b>"] = cmp.mapping.scroll_docs(-4),
        ["<c-f>"] = cmp.mapping.scroll_docs(4),
        ["<c-space>"] = cmp.mapping.complete(),
        ["<c-e>"] = cmp.mapping.abort(),
        -- Accept currently selected item. Set `select` to `false` to only
        -- confirm explicitly selected items.
        ["<cR>"] = cmp.mapping.confirm({ select = true }),
    }),
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(_, vim_item)
            local icons = {
                Text = "",
                Method = "",
                Function = "",
                Constructor = "",
                Field = "",
                Variable = "",
                Class = "ﴯ",
                Interface = "",
                Module = "",
                Property = "ﰠ",
                Unit = "",
                Value = "",
                Enum = "",
                Keyword = "",
                Snippet = "",
                Color = "",
                File = "",
                Reference = "",
                Folder = "",
                EnumMember = "",
                Constant = "",
                Struct = "",
                Event = "",
                Operator = "",
                TypeParameter = "",
            }
            vim_item.kind =
                string.format("%s %s", icons[vim_item.kind], vim_item.kind)
            local str = vim.split(vim_item.kind, "%s", { trimempty = true })
            vim_item.kind = str[1] .. " "
            vim_item.menu = "    (" .. str[2] .. ")"
            return vim_item
        end,
    },
})

local cmp = require("cmp")

require("cmp").setup({
    sources = {
        { name = "buffer" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
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
        ["<c-y>"] = cmp.mapping.confirm({ select = false }),
        ["<c-e>"] = cmp.mapping.abort(),

        ["<c-p>"] = cmp.mapping.select_prev_item(),
        ["<c-n>"] = cmp.mapping.select_next_item(),
        ["<s-tab>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.select_next_item(),

        ["<c-b>"] = cmp.mapping.scroll_docs(-4),
        ["<c-f>"] = cmp.mapping.scroll_docs(4),
    }),
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, item)
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
            local sources = {
                path = "Path",
                buffer = "Buffer",
                nvim_lsp = "LSP",
                luasnip = "LuaSnip",
                nvim_lua = "Lua",
                latex_symbols = "LaTeX",
            }
            local source = sources[entry.source.name] or entry.source.name

            item.kind = icons[item.kind] or "?"
            item.menu = "        [" .. source .. "]"
            return item
        end,
    },
})

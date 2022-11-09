require("cmp").setup({
    sources = {
        { name = "nvim_lsp" },
    },
    window = {
        completion = {
            border ='rounded',
            winhighlight ='Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None',
            zindex = 1001,
            scrolloff = 0,
            col_offset = 0,
            side_padding = 1,
        },
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
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
                TypeParameter = ""
            }
            vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
            local str = vim.split(vim_item.kind, "%s", { trimempty = true })
            vim_item.kind = str[1] .. " "
            vim_item.menu = "    (" .. str[2] .. ")"
            return vim_item
        end,
    },
})

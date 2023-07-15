-- A completion plugin for neovim coded in Lua.

return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter" },
  dependencies = {
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/nvim-cmp",
    "petertriho/cmp-git",
    "saadparwaiz1/cmp_luasnip",
  },

  opts = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    local behavior = cmp.ConfirmBehavior.Replace

    return {
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "git" },
        { name = "buffer" },
        { name = "luasnip" },
        { name = "path" },
      }),

      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<c-p>"] = cmp.mapping.select_prev_item(),
        ["<c-n>"] = cmp.mapping.select_next_item(),
        ["<c-b>"] = cmp.mapping.scroll_docs(-4),
        ["<c-f>"] = cmp.mapping.scroll_docs(4),
        ["<c-q>"] = cmp.mapping.abort(),
        ["<cr>"] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
              cmp.confirm({ behavior = behavior, select = false })
            else
              fallback()
            end
          end,
          s = cmp.mapping.confirm({ select = true }),
          c = cmp.mapping.confirm({ behavior = behavior, select = true }),
        }),
      }),

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

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
          local names = {
            path = "Path",
            buffer = "Buffer",
            nvim_lsp = "LSP",
            luasnip = "LuaSnip",
            nvim_lua = "Lua",
          }
          local source = names[entry.source.name] or entry.source.name

          item.kind = icons[item.kind] or "?"
          item.menu = "        [" .. source .. "]"
          return item
        end,
      },
    }
  end,
}

-- A completion plugin for neovim coded in Lua.

return {
  "hrsh7th/nvim-cmp",
  lazy = true,
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function()
    local cmp = require("cmp")
    return {
      sources = {
        { name = "buffer" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<c-t>"] = cmp.mapping.confirm({ select = false }),
        ["<c-e>"] = cmp.mapping.abort(),

        ["<c-p>"] = cmp.mapping.select_prev_item(),
        ["<c-n>"] = cmp.mapping.select_next_item(),

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
    }
  end,
  config = function(_, opts)
    require("cmp").setup(opts)

    vim.lsp.handlers["textDocument/hover"] = -- luacheck: ignore
      vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

    vim.lsp.handlers["textDocument/signatureHelp"] = -- luacheck: ignore
      vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
  end,
}

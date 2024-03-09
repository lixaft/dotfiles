-- Snippet Engine for Neovim written in Lua.
local partial = require("lixaft.utils.func").partial

return {
    "L3MON4D3/LuaSnip",
    lazy = true,
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    keys = {
        { "<c-y>", partial("luasnip", "expand"), mode = "i" },
        { "<c-j>", partial("luasnip", "jump", { 1 }), mode = { "i", "s" } },
        { "<c-k>", partial("luasnip", "jump", { -1 }), mode = { "i", "s" } },
    },

    build = "make install_jsregexp",

    config = function()
        ls = require("luasnip")

        ls.add_snippets("all", require("lixaft.snippets.all"))
        ls.add_snippets("go", require("lixaft.snippets.go"))
        ls.add_snippets("python", require("lixaft.snippets.python"))
        require("luasnip.loaders.from_vscode").lazy_load()
    end,
}

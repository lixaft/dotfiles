local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
    s("err", {
        t({
            "if err != nil {",
            "    return err",
            "}",
        }),
    }),
}

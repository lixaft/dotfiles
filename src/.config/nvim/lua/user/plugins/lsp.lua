local map = require("user.utilities.map")

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions.
map.normal("<space>d", vim.diagnostic.open_float)
map.normal("[d", vim.diagnostic.goto_prev)
map.normal("]d", vim.diagnostic.goto_next)

vim.diagnostic.config({

    -- Use underline for diagnostics (default true).
    underline = true,

    -- Use signs for diagnostics.
    signs = true,

    -- If false, diagnostics are only updated on InsertLeave.
    update_in_insert = false,

    -- Use virtual text for diagnostics.
    virtual_text = {
        spacing = 4,
        prefix = "■",
    },

    -- Options for floating windows. See vim.diagnostic.open_float().
    float = {
        border = "rounded",
    },
})

vim.lsp.handlers["textDocument/hover"] = -- luacheck: ignore
    vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })

-- Add icons instead of letter.
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Prepare the language configurations.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function()
    -- Mappings.
    -- Most of the lsp mappings are mapped on lspsaga.
    map.normal(
        "<leader>f",
        function() vim.lsp.buf.format({ async = true }) end
    )
end

-- Python.
require("lspconfig").jedi_language_server.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

-- Lua.
require("lspconfig").sumneko_lua.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                enable = false,
            },
            format = {
                enable = false,
            },
        },
    },
})

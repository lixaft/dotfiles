local map = require("user.utilities.map")

-- Add icons instead of letter.
local signs = {
    Error = "✘ ",
    Warn = "▲ ",
    Hint = "⚑ ",
    Info = " ",
}
for type, text in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = text, texthl = hl, numhl = hl })
end

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

    severity_sort = true,

    -- Options for floating windows. See vim.diagnostic.open_float().
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

vim.lsp.handlers["textDocument/hover"] = -- luacheck: ignore 122
    vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

vim.lsp.handlers["textDocument/signatureHelp"] = -- luacheck: ignore 122
    vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- Prepare the language configurations.
local settings = {
    sumneko_lua = {
        Lua = {
            diagnostics = {
                enable = false,
            },
            format = {
                enable = false,
            },
        },
    },
}

require("mason").setup({
    ui = {
        -- whether to automatically check for new versions when opening the
        -- :mason window.
        check_outdated_packages_on_open = true,

        -- the border to use for the ui window. accepts same border values as
        -- |nvim_open_win()|.
        border = "rounded",

        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },

        -- define keymaps.
        keymaps = {
            toggle_package_expand = "<cr>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "u",
            check_outdated_packages = "c",
            uninstall_package = "x",
            cancel_installation = "<c-c>",
            apply_language_filter = "<c-f>",
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",
        "rust_analyzer",
        "sumneko_lua",
    },
})

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({
            settings = settings[server_name] or {},
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            on_attach = function(_, buffer)
                local options = { buffer = buffer }

                -- LSP actions.
                map.normal("K", vim.lsp.buf.hover, options)
                map.normal("gd", vim.lsp.buf.definition, options)
                map.normal("gD", vim.lsp.buf.declaration, options)
                map.normal("gi", vim.lsp.buf.implementation, options)
                map.normal("go", vim.lsp.buf.type_definition, options)
                map.normal("gr", vim.lsp.buf.references, options)
                map.normal("<c-k>", vim.lsp.buf.signature_help, options)
                map.normal("gr", vim.lsp.buf.rename, options)
                map.normal("ga", vim.lsp.buf.code_action, options)
                map.x("<F4>", vim.lsp.buf.range_code_action, options)

                -- Diagnostics
                map.normal("gl", vim.diagnostic.open_float, options)
                map.normal("[d", vim.diagnostic.goto_prev, options)
                map.normal("]d", vim.diagnostic.goto_next, options)

                -- Formatting.
                map.normal("<leader>f", vim.lsp.buf.format)
            end,
        })
    end,
})

-- -- Mappings.
-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions.
-- map.normal("<space>d", vim.diagnostic.open_float)
-- map.normal("[d", vim.diagnostic.goto_prev)
-- map.normal("]d", vim.diagnostic.goto_next)
--
-- vim.diagnostic.config({
--
--     -- Use underline for diagnostics (default true).
--     underline = true,
--
--     -- Use signs for diagnostics.
--     signs = true,
--
--     -- If false, diagnostics are only updated on InsertLeave.
--     update_in_insert = false,
--
--     -- Use virtual text for diagnostics.
--     virtual_text = {
--         spacing = 4,
--         prefix = "■",
--     },
--
--     -- Options for floating windows. See vim.diagnostic.open_float().
--     float = {
--         border = "rounded",
--     },
-- })
--
-- vim.lsp.handlers["textDocument/hover"] = -- luacheck: ignore
--     vim.lsp.with(vim.lsp.handlers.hover, {
--         border = "rounded",
--     })
--
-- -- Add icons instead of letter.
-- local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
-- for type, icon in pairs(signs) do
--     local hl = "DiagnosticSign" .. type
--     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
-- end
--
-- -- Prepare the language configurations.
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local on_attach = function()
--     -- Mappings.
--     -- Most of the lsp mappings are mapped on lspsaga.
--     map.normal(
--         "<leader>f",
--         function() vim.lsp.buf.formatting({ async = true }) end
--     )
-- end
--
-- -- Python.
-- require("lspconfig").jedi_language_server.setup({
--     capabilities = capabilities,
--     on_attach = on_attach,
-- })
--
-- -- Lua.
-- require("lspconfig").sumneko_lua.setup({
--     capabilities = capabilities,
--     on_attach = on_attach,
--     settings = {
--         Lua = {
--             diagnostics = {
--                 enable = false,
--             },
--             format = {
--                 enable = false,
--             },
--         },
--     },
-- })

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
        -- Whether to automatically check for new versions when opening the
        -- :mason window.
        check_outdated_packages_on_open = true,

        -- The border to use for the ui window. accepts same border values as
        -- |nvim_open_win()|.
        border = "rounded",

        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },

        -- Define keymaps.
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
        "jedi_language_server",
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
                map.normal("gD", vim.lsp.buf.declaration, options)
                map.normal("gd", vim.lsp.buf.definition, options)
                map.normal("gi", vim.lsp.buf.implementation, options)
                map.normal("go", vim.lsp.buf.type_definition, options)
                map.normal("gr", vim.lsp.buf.references, options)
                map.normal("<c-k>", vim.lsp.buf.signature_help, options)
                map.normal("<leader>ca", vim.lsp.buf.code_action, options)
                map.normal("<leader>r", vim.lsp.buf.rename, options)

                -- Diagnostics.
                map.normal("<leader>of", vim.diagnostic.open_float, options)
                map.normal("[d", vim.diagnostic.goto_prev, options)
                map.normal("]d", vim.diagnostic.goto_next, options)

                -- Formatting.
                map.normal("<leader>f", vim.lsp.buf.format)
            end,
        })
    end,
})

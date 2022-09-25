local Remap = require("lixaft.utilities.remap")

local function config(_config)
    return vim.tbl_deep_extend(
        "force",
        {
            capabilities = require("cmp_nvim_lsp").update_capabilities(
                vim.lsp.protocol.make_client_capabilities()
            ),
            on_attach = function()
                Remap.normal("<c-k>", vim.lsp.buf.signature_help)
                Remap.normal("<leader>D", vim.lsp.buf.type_definition)
                Remap.normal("<leader>ca", vim.lsp.buf.code_action)
                Remap.normal("<leader>f", vim.lsp.buf.formatting)
                Remap.normal("<leader>rn", vim.lsp.buf.rename)
                Remap.normal("<leader>wa", vim.lsp.buf.add_workspace_folder)
                Remap.normal("<leader>wl", function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end)
                Remap.normal("<leader>wr", vim.lsp.buf.remove_workspace_folder)
                Remap.normal("K", vim.lsp.buf.hover)
                Remap.normal("[d", vim.diagnostic.goto_prev)
                Remap.normal("]d", vim.diagnostic.goto_next)
                Remap.normal("gD", vim.lsp.buf.declaration)
                Remap.normal("gd", vim.lsp.buf.definition)
                Remap.normal("gi", vim.lsp.buf.implementation)
                Remap.normal("gr", vim.lsp.buf.references)
                Remap.normal("<leader>e", vim.diagnostic.open_float)
                Remap.normal("<leader>q", vim.diagnostic.setloclist)

            end,
        },
        _config or {}
    )
end

require("cmp").setup(
    {
        sources = {
            {name = "cmp_tabnine"},
            {name = "nvim_lsp"},
        },
        formatting = {
            format = require("lspkind").cmp_format(
                {
                    mode = "symbol",
                    maxwith = 50,
                    ellipsis_char = "...",
                }
            )
        },
    }
)

require("cmp_tabnine.config").setup(
    {
        max_lines=1000,
        max_num_results=20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
    }
)

require("lspconfig").jedi_language_server.setup(config())



require("null-ls").setup(
    {
        sources = {
            require("null-ls").builtins.diagnostics.mypy,
            require("null-ls").builtins.diagnostics.pylint,
            require("null-ls").builtins.formatting.black,
            require("null-ls").builtins.formatting.isort,
        }
    }
)

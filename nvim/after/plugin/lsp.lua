local Remap = require("lixaft.utilities.remap")

local function config(_config)
    return vim.tbl_deep_extend(
        "force",
        {
            capabilities = require("cmp_nvim_lsp").default_capabilities(
                vim.lsp.protocol.make_client_capabilities()
            ),
            on_attach = function()
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
            end,
        },
        _config or {}
    )
end

require("lspconfig").jedi_language_server.setup(config())

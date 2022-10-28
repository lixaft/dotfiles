local map = require("lixaft.utilities.map")

local function config(_config)
    return vim.tbl_deep_extend(
        "force",
        {
            capabilities = require("cmp_nvim_lsp").default_capabilities(
                vim.lsp.protocol.make_client_capabilities()
            ),
            on_attach = function()
                map.normal("<leader>ca", vim.lsp.buf.code_action)
                map.normal("<leader>f", vim.lsp.buf.formatting)
                map.normal("<leader>re", vim.lsp.buf.rename)
                map.normal("<leader>wa", vim.lsp.buf.add_workspace_folder)
                map.normal("<leader>wl", function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end)
                map.normal("<leader>wr", vim.lsp.buf.remove_workspace_folder)
                map.normal("K", vim.lsp.buf.hover)
                map.normal("[d", vim.diagnostic.goto_prev)
                map.normal("]d", vim.diagnostic.goto_next)
            end,
        },
        _config or {}
    )
end

require("lspconfig").jedi_language_server.setup(config())

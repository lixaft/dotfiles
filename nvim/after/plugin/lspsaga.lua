local Remap = require("lixaft.utilities.remap")
local Saga = require("lspsaga")

Saga.init_lsp_saga(
    {
        border_style = "rounded",
        finder_action_keys = {
            open = "<cr>",
            quit = "<esc>",
            split = "i",
            table = "t",
            vsplit = "s",
        },
    }
)

Remap.normal("<leader>lf", "<cmd>Lspsaga lsp_finder<cr>")

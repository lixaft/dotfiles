local lspsaga = require("lspsaga")
local map = require("lixaft.utilities.map")

lspsaga.init_lsp_saga(
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

map.normal("<c-k>", "<cmd>Lspsaga lsp_finder<cr>")

local map = require("user.utilities.map")

-- Load plugin configurations.
require("user.plugins.cmp")
require("user.plugins.comment")
require("user.plugins.harpoon")
require("user.plugins.lsp")
require("user.plugins.lualine")
require("user.plugins.null_ls")
require("user.plugins.telescope")
require("user.plugins.tokyonight")
require("user.plugins.tree")
require("user.plugins.treesitter")
require("user.plugins.treesitter_context")
require("user.plugins.trouble")

-- Load plugins.
require("colorizer").setup()
require("virt-column").setup({ char = "│" })
require("which-key").setup()

-- Define mappings.
map.normal("<leader>ut", ":UndotreeToggle<cr>")
map.visual("<leader>ga", ":EasyAlign<cr>")

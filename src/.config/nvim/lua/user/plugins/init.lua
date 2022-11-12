-- Load configurations.
require("user.plugins.better_whitespace")
require("user.plugins.cmp")
require("user.plugins.comment")
require("user.plugins.lsp")
require("user.plugins.lspsaga")
require("user.plugins.lualine")
require("user.plugins.null_ls")
require("user.plugins.telescope")
require("user.plugins.tokyonight")
require("user.plugins.tree")
require("user.plugins.treesitter")
require("user.plugins.treesitter_context")
require("user.plugins.trouble")

-- Load simple plugins.
require("colorizer").setup()
require("virt-column").setup({ char = "│" })

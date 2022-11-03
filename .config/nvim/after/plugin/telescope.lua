local map = require("user.utilities.map")
local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")
local telescope_config = require("telescope.config")

local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }
table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")

-- Define hotkeys.
map.normal("<c-p>", function() telescope_builtin.find_files() end)
map.normal("<c-g>", function() telescope_builtin.live_grep() end)

telescope.setup({

    -- Default configuration for telescope.
    defaults = {
        vimgrep_arguments = vimgrep_arguments,

        -- Remap actions.
        -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
        mappings = {},
    },

    -- Default configuration for builtin picker.
    pickers = {
        find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
        },
    },

    -- Your extension configuration
    extensions = {},
})

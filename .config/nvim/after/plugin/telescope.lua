local map = require("lixaft.utilities.map")
local telescope_builtin = require("telescope.builtin")
local telescope_config = require("telescope.config")

local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }
table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!.git/*")

map.normal("<c-p>", function() telescope_builtin.find_files() end)
map.normal("<c-g>", function() telescope_builtin.live_grep() end)
map.normal("<leader>comm", function() telescope_builtin.git_commits() end)

require("telescope").setup({
	defaults = {
		vimgrep_arguments = vimgrep_arguments,
	},
    pickers = {
        find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
        }
    }
})

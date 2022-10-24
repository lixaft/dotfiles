local Remap = require("lixaft.utilities.remap")
local Builtin = require("telescope.builtin")

Remap.normal("<c-p>", function() Builtin.find_files() end)

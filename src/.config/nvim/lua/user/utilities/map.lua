local M = {}

local noremap = function(mode)
    return function(key, command, options)
        local extended_options = vim.tbl_extend(
            "force",
            { noremap = true, silent = true },
            options or {}
        )
        vim.keymap.set(mode, key, command, extended_options)
    end
end

M.insert = noremap("i")
M.normal = noremap("n")
M.visual = noremap("v")

return M

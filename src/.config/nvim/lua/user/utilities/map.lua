local M = {}

local noremap = function(mode)
    return function(key, command)
        vim.keymap.set(
            mode,
            key,
            command,
            {noremap = true, silent = true}
        )
    end
end

M.insert = noremap("i")
M.normal = noremap("n")
M.visual = noremap("v")

return M

local M = {}

local noremap = function(mode)
    local internal = function(key, command)
        vim.keymap.set(
            mode,
            key,
            command,
            {noremap = true, silent = true}
        )
    end
    return internal
end

M.insert = noremap("i")
M.normal = noremap("n")
M.visual = noremap("v")

return M

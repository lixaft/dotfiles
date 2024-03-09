local M = {}

function M.set(mode, key, func, opts)
    opts = vim.deepcopy(opts)
    vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
    vim.keymap.set(mode, key, func, opts)
end

return M

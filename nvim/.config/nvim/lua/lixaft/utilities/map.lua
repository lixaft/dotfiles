local M = {}

local noremap = function(mode)
  return function(key, command, options)
    local extended_options =
      vim.tbl_extend("force", { noremap = true, silent = true }, options or {})
    vim.keymap.set(mode, key, command, extended_options)
  end
end

M.i = noremap("i")
M.n = noremap("n")
M.v = noremap("v")
M.x = noremap("x")
M.o = noremap("o")

return M

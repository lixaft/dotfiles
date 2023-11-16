-- An extension for nvim-dap, providing default configurations for python and
-- methods to debug individual test methods or classes.

return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  dependencies = {
    "mfussenegger/nvim-dap",
  },

  config = function()
    local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    require("dap-python").setup(path)
  end,
}

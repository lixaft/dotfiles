-- An extension for nvim-dap, providing default configurations for python and
-- methods to debug individual test methods or classes.
local partial = require("lixaft.utils.func").partial

return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  keys = {
    { "<leader>dt", partial("dap-python", "test_method") },
    { "<leader>dc", partial("dap-python", "test_class") },
    { "<leader>ds", partial("dap-python", "debug_selection"), mode = "v" },
  },

  config = function()
    local dap_python = require("dap-python")

    local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    dap_python.setup(path)
    dap_python.test_runner = "pytest"

    for _, config in ipairs(require("dap").configurations.python) do
      config.justMyCode = false
    end
  end,
}

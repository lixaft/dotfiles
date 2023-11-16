-- Debug Adapter Protocol client implementation for Neovim.
local partial = require("lixaft.utils.func").partial

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
  },
  keys = {
    { "<F1>", partial("dap", "step_into") },
    { "<F2>", partial("dap", "step_over") },
    { "<F3>", partial("dap", "continue") },
    { "<F4>", partial("dap", "step_out") },
    { "<leader>b", partial("dap", "toggle_breakpoint") },
    { "<leader>dl", partial("dap", "run_last") },
  },

  config = function()
    local dap = require("dap")
    dap.listeners.after.event_initialized["dapui_config"] = function()
      local dapui = require("dapui")
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      local dapui = require("dapui")
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      local dapui = require("dapui")
      dapui.close()
    end

    table.insert(dap.configurations.python, {
      type = "python",
      name = "Attach (Pick Process)",
      mode = "local",
      request = "attach",
      processId = require("dap.utils").pick_process,
    })
  end,
}

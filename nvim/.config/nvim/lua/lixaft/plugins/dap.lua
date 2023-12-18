-- Debug Adapter Protocol client implementation for Neovim.
local partial = require("lixaft.utils.func").partial

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
    "theHamsta/nvim-dap-virtual-text",
  },
  keys = {
    { "<F1>", partial("dap", "step_into") },
    { "<F2>", partial("dap", "step_over") },
    { "<F3>", partial("dap", "continue") },
    { "<F4>", partial("dap", "step_out") },
    { "<F5>", partial("dap", "step_back") },
    { "<s-up>", partial("dap", "up") },
    { "<s-down>", partial("dap", "down") },
    { "<c-b>", partial("dap", "toggle_breakpoint") },
    { "<leader-b>", partial("dap", "conditional-breakpoint") },
    { "<leader>dq", partial("dap", "terminate") },
    { "<leader>dr", partial("dap", "run_last") },
  },

  config = function()
    vim.fn.sign_define("DapBreakpoint", {
      text = "",
      texthl = "DapBreakpoint",
    })
    vim.fn.sign_define("DapBreakpointCondition", {
      text = "",
      texthl = "DapBreakpoint",
    })
    vim.fn.sign_define("DapBreakpointRejected", {
      text = "",
      texthl = "DapBreakpoint",
    })
    vim.fn.sign_define("DapLogPoint", {
      text = "",
      texthl = "DapLogPoint",
    })
    vim.fn.sign_define("DapStopped", {
      text = "",
      texthl = "DapStopped",
    })

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
  end,
}

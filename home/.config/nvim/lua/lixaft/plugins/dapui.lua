-- A UI for nvim-dap.
local partial = require("lixaft.utils.func").partial

return {
    "rcarriga/nvim-dap-ui",
    keys = {
        { "<leader>dr", partial("dapui", "open", { reset = true }) },
    },

    config = function()
        require("dapui").setup()
    end,
}

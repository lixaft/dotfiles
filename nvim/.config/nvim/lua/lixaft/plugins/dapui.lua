-- A UI for nvim-dap.

return {
  "rcarriga/nvim-dap-ui",
  lazy = true,

  config = function()
    require("dapui").setup()
  end,
}

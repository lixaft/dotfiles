-- A modern plugin manager for Neovim.
--
-- https://github.com/folke/lazy.nvim

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({
  import = "lixaft.plugins",
}, {
  ui = {
    border = "rounded",
  },
  change_detection = {
    enable = true,
    notify = false,
  },
})

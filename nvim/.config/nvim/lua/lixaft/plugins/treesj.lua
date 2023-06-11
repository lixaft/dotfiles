-- Neovim plugin for splitting/joining blocks of code.
--
-- https://github.com/Wansmer/treesj

return {
  "Wansmer/treesj",
  keys = {
    { "gj", "<cmd>TSJToggle<cr>", desc = "split / join line" },
  },
  opts = {
    use_default_keymaps = false,
  },
}

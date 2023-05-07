-- Neovim plugin for GitHub Copilot.
--
-- https://github.com/github/copilot.vim

return {
  "github/copilot.vim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  init = function(_, _)
    vim.api.nvim_set_keymap(
      "i",
      "<c-f>",
      'copilot#Accept("<CR>")',
      { silent = true, expr = true }
    )
    vim.g.copilot_no_tab_map = true
  end,
}

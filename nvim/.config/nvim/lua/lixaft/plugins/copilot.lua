-- Neovim plugin for GitHub Copilot.
--
-- https://github.com/github/copilot.vim

return {
  "github/copilot.vim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
}

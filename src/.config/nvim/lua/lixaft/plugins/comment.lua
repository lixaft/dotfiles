-- Smart and powerful comment plugin for neovim. Supports treesitter, dot
-- repeat, left-right/up-down motions, hooks, and more.
--
-- https://github.com/numToStr/Comment.nvim

return {
  "numToStr/Comment.nvim",
  lazy = true,
  keys = {
    -- For some reason, vim seems registers `<c-/>` as `<c-_>` (we can
    -- see it in insert mode using `<c-v><c-/>`).
    {
      "<c-_>",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      desc = "Toggle linewise comment",
      mode = { "n" },
    },
    {
      "<c-_>",
      function()
        local esc = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
        vim.api.nvim_feedkeys(esc, "x", false)
        require("Comment.api").toggle.linewise(vim.fn.visualmode())
      end,
      desc = "Toggle linewise comment (visual)",
      mode = { "x" },
    },
  },
  opts = {

    -- Don't create any mapping. We want to create them using the lazy
    -- keys option in order to lazy load the plugin.
    mappings = false,
  },
}
--

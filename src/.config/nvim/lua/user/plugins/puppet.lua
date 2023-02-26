-- Puppet niceties for your Vim setup.
--
-- https://github.com/rodjek/vim-puppet

return {
  "rodjek/vim-puppet",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
}

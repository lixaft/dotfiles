-- Portable package manager for Neovim that runs everywhere Neovim runs.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
--
-- https://github.com/williamboman/mason.nvim

return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = {
    { "<leader>om", "<cmd>Mason<cr>", desc = "Open mason" },
  },
  opts = {
    log_level = vim.log.levels.DEBUG,
    ui = {
      -- Whether to automatically check for new versions when opening the
      -- :mason window.
      check_outdated_packages_on_open = true,

      -- The border to use for the ui window. accepts same border values as
      -- |nvim_open_win()|.
      border = "rounded",

      icons = {
        package_installed = "◍",
        package_pending = "◍",
        package_uninstalled = "◍",
      },

      -- Define keymaps.
      keymaps = {
        toggle_package_expand = "<cr>",
        install_package = "i",
        update_package = "u",
        check_package_version = "c",
        update_all_packages = "u",
        check_outdated_packages = "c",
        uninstall_package = "x",
        cancel_installation = "<c-c>",
        apply_language_filter = "<c-f>",
      },
    },
  },
}
-- Portable package manager for Neovim that runs everywhere Neovim runs.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.

-- TODO: Auto install packages.
return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = {
    { "<leader>m", "<cmd>Mason<cr>" },
  },

  build = ":MasonUpdate",

  opts = {
    ui = {
      border = "rounded",
      check_outdated_packages_on_open = true,

      icons = {
        package_installed = "●",
        package_pending = "○",
        package_uninstalled = "○",
      },

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

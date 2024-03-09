-- Portable package manager for Neovim that runs everywhere Neovim runs.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.

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
        cancel_installation = "<c-x>",
        apply_language_filter = "<c-f>",
      },
    },
  },

  config = function(_, opts)
    require("mason").setup(opts)

    local packages = {
      -- LSP.
      "bash-language-server",
      "clangd",
      "cmake-language-server",
      "gopls",
      "lua-language-server",
      "pyright",
      "ruff-lsp",
      "rust-analyzer",
      "typescript-language-server",
      -- "zls",

      -- DAP.
      "debugpy",

      -- Linters.
      "luacheck",

      -- Formatters.
      "gersemi",
      "prettier",
      "shfmt",
      "stylua",
    }

    local reg = require("mason-registry")

    for _, name in ipairs(packages) do
      local pkg = reg.get_package(name)
      if not reg.is_installed(name) then
        pkg:install()
      end
    end
  end,
}

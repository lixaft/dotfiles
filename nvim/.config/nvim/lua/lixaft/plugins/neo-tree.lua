-- Neovim plugin to manage the file system and other tree like structures.

return {
  "nvim-neo-tree/neo-tree.nvim",
  event = { "BufEnter" },
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>" },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_netrwSettings = 1
  end,

  opts = {
    close_if_last_window = true,

    default_component_configs = {
      indent = {
        with_markers = false,
      },
    },

    window = {
      mappings = {
        ["P"] = { "toggle_preview" },
      },
    },

    filesystem = {
      follow_current_file = true,
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_hidden = false,
        never_show = {
          ".DS_Store",
          ".git",
          "Thumbs.db",
          "__pycache__",
        },
      },
    },

    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree").close_all()
        end,
      },
    },
  },
}

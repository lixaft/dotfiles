-- Neovim plugin to manage the file system and other tree like structures.
--
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  cmd = { "Neotree" },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
  },
  init = function()
    -- Disable netrw.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    -- Close Neo-tree if it is the last window left in the tab.
    close_if_last_window = true,

    default_component_configs = {
      indent = {
        -- Disable tree markers.
        with_markers = false,
      },
    },

    window = {
      mappings = {
        ["P"] = { "toggle_preview" },
      },
    },

    filesystem = {
      -- This will find and focus the file in the active buffer every time the
      -- current file is changed while the tree is open.
      follow_current_file = true,

      -- This will use the OS level file watchers to detect changes instead of
      -- relying on nvim autocmd events.
      use_libuv_file_watcher = true,

      hijack_netrw_behavior = "open_current",

      filtered_items = {
        -- Do not hide dotfiles.
        hide_dotfiles = false,

        -- Only works on Windows for hidden files/directories
        hide_hidden = true,

        -- Remains hidden even if visible is toggled to true, this overrides
        -- always_show.
        never_show = {
          ".DS_Store",
          ".git",
          "__pycache__",
        },
      },
    },

    event_handlers = {
      -- Close neo-tree on file_opened event.
      {
        event = "file_opened",
        handler = function(_)
          require("neo-tree").close_all()
        end,
      },
    },
  },
}

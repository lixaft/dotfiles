-- Neovim configuration file.
--
-- Description:
--
--    Hyperextensible Vim-based text editor.
--
-- Location:
--
--    ~/.config/nvim/init.lua
--

-- Source the differents configuration files.
require("plugins")
require("options")
require("keymaps")

-- Initialize lualine.
require("lualine").setup {
    options = {
        theme = "palenight"
    }
}

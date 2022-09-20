# Fish configuration file.
#
# Description:
#
#   fish is a smart and user-friendly command line shell for macOS, Linux, and
#   the rest of the family. fish includes features like syntax highlighting,
#   autosuggest-as-you-type, and fancy tab completions that just work, with no
#   configuration required.
#
# Location:
#
#   ~/.config/fish/config.fish
#

# Remove welcome message.
set fish_greeting

# Define aliases.
alias docker="podman"
alias refresh="source $HOME/.config/fish/config.fish"
alias tree="tree -C"
alias vim="nvim"

# Extend $PATH.
fish_add_path "$HOME/bin"

# Make sure we pick Neovim as editor.
set -x EDITOR "nvim"
set -x VISUAL "nvim"

# Python variables.
set -x PIP_DISABLE_PIP_VERSION_CHECK "1"
set -x PYTHONSTARTUP "$HOME/.pythonrc"

# Initialize starship.
starship init fish | source

# Source completions.
podman completion fish | source

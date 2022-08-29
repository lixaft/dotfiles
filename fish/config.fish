# Configuration file for fish shell.
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
alias refresh="source ~/.config/fish/config.fish"
alias tree="tree -C"

# Extend $PATH.
fish_add_path "$HOME/bin"

# Define environment variables.
set -x VISUAL "vim"
set -x PYTHONSTARTUP "$HOME/.pythonrc"

# Load starship.
starship init fish | source

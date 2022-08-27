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

# Remove the fish welcome message.
set fish_greeting

# Load starship.
starship init fish | source

# Add executable to PATH.
fish_add_path "~/bin"

# Add some facility to the interactive python interpreter.
set -x PYTHONSTARTUP "~/.pythonrc"

# Define aliases.
alias tree="tree -C"
alias refresh="source ~/.config/fish/config.fish"

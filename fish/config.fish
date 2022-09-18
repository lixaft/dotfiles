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
alias docker="podman"
alias refresh="source ~/.config/fish/config.fish"
alias tree="tree -C"

# Extend $PATH.
fish_add_path "$HOME/bin"

# Make sure we pick vim as editor.
set -x VISUAL "vim"
set -x EDITOR "vim"

# Python variables.
set -x PYTHONSTARTUP "$HOME/.pythonrc"
set -x PIP_DISABLE_PIP_VERSION_CHECK "1"

# Load starship.
starship init fish | source

# Load completion.
podman completion fish | source

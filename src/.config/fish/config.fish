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
set fish_greeting ""

# Define aliases.
alias refresh="source $HOME/.config/fish/config.fish"
alias tree="tree -C"

# Extend $PATH.
fish_add_path "$HOME/bin"

# Python variables.
set --export PIP_DISABLE_PIP_VERSION_CHECK "1"
set --export PYTHONSTARTUP "$HOME/.pythonrc"

# Replace `ls` by `exa` if available.
if type --query "exa"
    alias ls="exa"
    alias ll="exa --long --git --group-directories-first"
    alias la="ll --all"
    alias tree="la --tree"
end

# Pick neovim as editor <3
if type --query "nvim"
    alias vim="nvim"
    set --export EDITOR "nvim"
    set --export VISUAL "nvim"
end

# Use `podman` instead of `docker`.
if type --query "podman"
    alias docker="podman"
    podman completion fish | source
end

# Initialize starship.
if type --query "starship"
    starship init fish | source
end

# Source local configuration.
set local "$HOME/.config/fish/config.local.fish"
if test -e "$local"
    source "$local"
end

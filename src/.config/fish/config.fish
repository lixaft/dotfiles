# Fish configuration file.

# Remove welcome message.
set fish_greeting ""

# Source colors.
source "$HOME/.config/fish/themes/tokyonight_night.fish"

# Define aliases.
alias python="python3"
alias refresh="source $HOME/.config/fish/config.fish"
alias tree="tree -C"

# Extend $PATH.
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.cargo/bin"

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

# Replace `cat` by `bat` if available.
if type --query "bat"
    alias cat="bat"
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

# Setup fisher.
function fisher_update
    curl -sL https://git.io/fisher | source
    fisher update
end

# Automatially run `pre-commit install`.
function __fish_prompt_event --on-event fish_prompt
    if test -e ".git" && type --query pre-commit && test -e ".pre-commit-config.yaml"
        pre-commit install &> /dev/null
    end
end

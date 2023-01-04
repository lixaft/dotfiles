# Fish configuration file.

# Remove welcome message.
set fish_greeting ""

# Define aliases.
alias python="python3"
alias refresh="source $HOME/.config/fish/config.fish"
alias tree="tree -C"

# Extend $PATH.
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.cargo/bin"
fish_add_path "/usr/local/sbin"

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

# TokyoNight color palette.
set --local foreground "#c0caf5"
set --local selection "#33467c"
set --local comment "#565f89"
set --local red "#f7768e"
set --local orange "#ff9e64"
set --local yellow "#e0af68"
set --local green "#9ece6a"
set --local purple "#9d7cd8"
set --local cyan "#7dcfff"
set --local pink "#bb9af7"

# Syntax highlighting colors.
set --global fish_color_normal "$foreground"
set --global fish_color_command "$cyan"
set --global fish_color_keyword "$pink"
set --global fish_color_quote "$yellow"
set --global fish_color_redirection "$foreground"
set --global fish_color_end "$orange"
set --global fish_color_error "$red"
set --global fish_color_param "$purple"
set --global fish_color_comment "$comment"
set --global fish_color_selection --background="$selection"
set --global fish_color_search_match --background="$selection"
set --global fish_color_operator "$green"
set --global fish_color_escape "$pink"
set --global fish_color_autosuggestion "$comment"

# Completion pager colors.
set --global fish_pager_color_progress "$comment"
set --global fish_pager_color_prefix "$cyan"
set --global fish_pager_color_completion "$foreground"
set --global fish_pager_color_description "$comment"
set --global fish_pager_color_selected_background --background="$selection"

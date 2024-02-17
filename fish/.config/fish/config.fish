# Remove welcome message.
set fish_greeting ""

# Ensure XDG variables are set.
set --export XDG_CACHE_HOME "$HOME/.cache"
set --export XDG_CONFIG_HOME "$HOME/.config"
set --export XDG_DATA_HOME "$HOME/.local/share"
set --export XDG_STATE_HOME "$HOME/.local/state"

# Term colors.
set --export TERM "xterm-256color"

# Extend $PATH.
fish_add_path "$HOME/.local/bin"

# Define aliases.
alias df="df -h"
alias du="du -h"
alias less="less -R"
alias pydoc="python -m pydoc"
alias python="python3"
alias refresh="source $HOME/.config/fish/config.fish"
alias sqlite="sqlite3"
alias ta="tmux attach"
alias tree="tree -C"

# Define abbreviations.
abbr --add "!!" --position anywhere --function "last_command"
abbr --add "-" --position command "cd -"

# Define bindings.
bind \ev "__editor_paginate"

# Sessionizer bindings.
bind \cs "tmux-sessionizer; commandline -f execute"
bind \ch "tmux-sessionizer ~; commandline -f execute"
bind \ct "tmux-sessionizer /tmp; commandline -f execute"
bind \cg "tmux-sessionizer ~/todo.md; commandline -f execute"

# Language configuration.
fish_add_path "$HOME/.cargo/bin"
fish_add_path "$HOME/go/bin"
source "$HOME/.opam/opam-init/init.fish"

# Python variables.
set --export PYTHONSTARTUP "$HOME/.pythonrc"
set --export PYTHONBREAKPOINT "pdb.set_trace"
set --export PIP_DISABLE_PIP_VERSION_CHECK "1"

# Replace `ls` by `exa` if available.
if type --query "exa"
    alias ls="exa"
    alias ll="exa --long --group-directories-first"
    alias la="exa --long --group-directories-first --all"
    alias tree="exa --group-directories-first --all --tree"
end

# Replace `cat` by `bat` if available.
if type --query "bat"
    alias cat="bat"
end

# Pick neovim as editor <3
if type --query "nvim"
    alias vi="nvim"
    alias vim="nvim"
    alias vimdiff="nvim -d"
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

# Source stim configuration.
set --local stim_config "$HOME/.config/fish/stim.fish"
if test -f "$stim_config"
    source "$stim_config"
end

# TokyoNight color palette.
set --local background "#1a1b26"
set --local foreground "#c0caf5"
set --local selection "#33467c"
set --local comment "#565f89"
set --local blue "#7aa2f7"
set --local cyan "#7dcfff"
set --local green "#9ece6a"
set --local orange "#ff9e64"
set --local pink "#bb9af7"
set --local purple "#9d7cd8"
set --local red "#f7768e"
set --local yellow "#e0af68"

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

# Setup `fzf` colorscheme.
set --export FZF_DEFAULT_OPTS "\
    $FZF_DEFAULT_OPTS \
    --color bg+:-1 \
    --color bg:-1 \
    --color border:$comment \
    --color fg+:$foreground \
    --color fg:$foreground \
    --color header:$comment \
    --color hl+:$blue \
    --color hl:$blue \
    --color info:$comment \
    --color marker:$green \
    --color pointer:$purple \
    --color prompt:$comment \
    --color spinner:$comment \
"

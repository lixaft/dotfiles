# Fish configuration file.

# Remove welcome message.
set fish_greeting ""

# Define aliases.
alias tree="tree -C"
alias less="less -R"
alias python="python3"
alias refresh="source $HOME/.config/fish/config.fish"

# Extend $PATH.
fish_add_path "$HOME/.local/bin"

# Python variables.
set --export PIP_DISABLE_PIP_VERSION_CHECK "1"
set --export PYTHONSTARTUP "$HOME/.pythonrc"

# Implement the equivalant of `!!`.
function __bang_bang
    echo -- "$history[1]"
end
abbr --add "!!" --position anywhere --function __bang_bang

# Quick `cd -`.
function __cd_minus
    echo -- "cd -"
end
abbr --add "-" --position command --function __cd_minus

# Tmux go binding.
bind \cs "tmux-go; commandline -f execute"

# Replace `ls` by `exa` if available.
if type --query "exa"
    alias ls="exa"
    alias ll="exa --long --git --group-directories-first"
    alias la="exa --long --git --group-directories-first --all"
    alias tree="exa --group-directories-first --git --all --tree"
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

# Quicly return to the tmux session path.
function t
    if not test -z $TMUX
        cd (tmux display-message -p "#{session_path}")
    else
        echo not in a tmux session
    end
end

# Automatially run `pre-commit install`.
function __fish_prompt_event --on-event fish_prompt
    if test -e ".git" && type --query pre-commit && test -e ".pre-commit-config.yaml"
        pre-commit install &> /dev/null
    end
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

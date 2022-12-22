# Bash configuration file.

# Disable MacOs warning on shell start.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Enable colors.
export CLICOLOR=1

# Define aliases.
alias docker="podman"
alias la="ls -al"
alias ll="ls -l"
alias refresh="source $HOME/.bashrc"
alias tree="tree -C"
alias vim="nvim"

# Extend $PATH.
export PATH+=":$HOME/bin"
export PATH+=":$HOME/.cargo/bin"

# Python variables.
export PIP_DISABLE_PIP_VERSION_CHECK=1
export PYTHONSTARTUP="$HOME/.pythonrc"

# Initialize starship.
eval "$(starship init bash)"

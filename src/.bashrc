# Bash configuration file.
#
# Description:
#
#   Bash is the shell, or command language interpreter, for the GNU operating
#   system. The name is an acronym for the ‘Bourne-Again SHell’.
#
# Location:
#
#   ~/.bashrc
#

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

# Python variables.
export PIP_DISABLE_PIP_VERSION_CHECK=1
export PYTHONSTARTUP="$HOME/.pythonrc"

# Initialize starship.
eval "$(starship init bash)"

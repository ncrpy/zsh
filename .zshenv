export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

export DOTFILES_DIR="$HOME/.dotfiles"

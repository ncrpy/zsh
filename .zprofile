typeset -gU path

export VOLTA_HOME="$HOME/.volta"

path=(
  $HOME/.cargo/bin(N-/)
  $VOLTA_HOME/bin(N-/)
  $HOME/.deno/bin(N-/)
  $HOME/.local/{,s}bin(N-/)
  $HOME/{,s}bin(N-/)
  /usr/local/{,s}bin(N-/)
  $path
)

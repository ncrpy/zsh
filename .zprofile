typeset -gU path

path=(
  ./node_modules/.bin(N-/)
  $HOME/.cargo/bin(N-/)
  $HOME/.deno/bin(N-/)
  $HOME/.local/{,s}bin(N-/)
  $HOME/{,s}bin(N-/)
  /usr/local/{,s}bin(N-/)
  $path
)

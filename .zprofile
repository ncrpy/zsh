typeset -gU path

if [ -z "${ld_library_path}" ]; then
	typeset -T LD_LIBRARY_PATH ld_library_path
fi

export CUDA_HOME="/usr/local/cuda"

path=(
  $HOME/.cargo/bin(N-/)
  $HOME/.local/{,s}bin(N-/)
  $HOME/{,s}bin(N-/)
  $CUDA_HOME/bin(N-/)
  /usr/local/{,s}bin(N-/)
  $path
)

ld_library_path=(
  $CUDA_HOME/lib64(N-/)
  /usr/lib/wsl/lib(N-/)
  /usr/local/{,s}lib(N-/)
  $ld_library_path
)

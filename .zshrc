# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -s "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh"
  antidote load
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f "${ZDOTDIR:-$HOME}/.p10k.zsh" ]] || source "${ZDOTDIR:-$HOME}/.p10k.zsh"

chpwd() {
  venv_dir="$(pwd)"
  while [[ "$venv_dir" =~ "^${HOME}/" ]]
  do
    if [[ -d "${venv_dir}/.venv" ]]; then
      source "${venv_dir}/.venv/bin/activate"
      break
    else
      venv_dir="$(dirname "$venv_dir")"
    fi
  done
  if [[ "$venv_dir" == "$HOME" && -n "$VIRTUAL_ENV" ]]; then
    deactivate
  fi
}

alias reboot-windows="sudo ~/.reboot_windows.sh"

abbr -S --quiet nv="nvim"

[[ ! -f "${ZDOTDIR:-$HOME}/.zshrc_local" ]] || source "${ZDOTDIR:-$HOME}/.zshrc_local"

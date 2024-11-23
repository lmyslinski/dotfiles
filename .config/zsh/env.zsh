# SDKMAN
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  eval "$(fnm env)"
fi

# Deno
[ -f "$HOME/.deno/env" ] && source "$HOME/.deno/env"

# Conda
if [ -x "$(command -v conda)" ]; then
  __conda_setup="$('$(command -v conda)' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
      . "$HOME/miniconda3/etc/profile.d/conda.sh"
    fi
  fi
  unset __conda_setup
fi

# Starship
eval "$(starship init zsh)"

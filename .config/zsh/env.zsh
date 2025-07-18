# SDKMAN
SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Deno
[ -f "$HOME/.deno/env" ] && source "$HOME/.deno/env"

if [[ $(uname -r) == *Microsoft* ]]; then
  export BROWSER=wslview
fi

# Zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

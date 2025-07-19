# Shared paths
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/share/pnpm:$PATH"
export PATH="$HOME/.local/share/fnm:$PATH"
export PATH="$HOME/.cache/lm-studio/bin:$PATH"
export PATH="$HOME/.sdkman/bin:$PATH"
export PATH="$HOME/.volta/bin:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/Dev/cv2b/cv2b/scripts:$PATH"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# golang
GOLANG_PATH="/usr/local/go/bin"
if [ -d "$GOLANG_PATH" ]; then
  export PATH="$PATH:$GOLANG_PATH"
fi

# fnm
FNM_PATH="/home/lmyslinski/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/lmyslinski/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# bun completions
[ -s "/home/lmyslinski/.bun/_bun" ] && source "/home/lmyslinski/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

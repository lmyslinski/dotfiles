# Source modular ZSH config
for file in ~/dotfiles/.config/zsh/*.zsh; do
  [ -r "$file" ] && source "$file"
done

# bun completions
[ -s "/Users/lmyslinski/.bun/_bun" ] && source "/Users/lmyslinski/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Source modular ZSH config
for file in ~/dotfiles/.config/zsh/*.zsh; do
  [ -r "$file" ] && source "$file"
done


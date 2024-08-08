source ~/.config/zsh/antigen.zsh 

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle kubectl
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Syntax autosuggestions bundle.
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
#antigen theme half-life

# Tell Antigen that you're done.
antigen apply

alias vim='nvim'
alias tf='terraform'
alias dc='docker compose'
export EDITOR='nvim'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:/opt/nvim/bin"
export PATH="/home/lmyslinski/go/bin:$PATH"
export PATH="/home/lmyslinski/.cargo/bin:$PATH"

# pnpm
export PNPM_HOME="/home/lmyslinski/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
eval "$(starship init zsh)"

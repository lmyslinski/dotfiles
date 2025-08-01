# Load Antigen
source ~/.config/zsh/antigen/antigen.zsh 

# Use Oh My Zsh
antigen use oh-my-zsh

# Load bundles
antigen bundle git
antigen bundle kubectl
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


# Apply Antigen
antigen apply

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"

# eza
alias ls="eza --icons"
alias ll="eza -lg --icons"
alias lt="eza -lTg --level=3 --icons"
alias ltall="eza -lTag --icons"

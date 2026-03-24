# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit
# End of lines added by compinstall

# setup zoxide
eval "$(zoxide init zsh)"

alias pacin="trizen -S "
alias pacreps="trizen -Ss "
alias pacupg="trizen -Syu"
alias pacrem="sudo pacman -Rns"
alias myip="curl icanhazip.com"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source ~/antigen.zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source /opt/homebrew/share/antigen/antigen.zsh
fi

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle git
antigen bundle thefuck

antigen theme terminalparty

antigen apply

neofetch

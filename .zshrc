# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/h4wke/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias pacin="trizen -S "
alias pacreps="trizen -Ss "
alias pacupg="trizen -Syu"
alias pacrem="sudo pacman -Rns"
alias myip="curl icanhazip.com"

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle git
antigen bundle thefuck

antigen theme terminalparty

antigen apply

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh
neofetch

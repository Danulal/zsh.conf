# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/danulal/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# plugins
eval "$(starship init zsh)" # initialize starship.rs
source ~/.config/zsh/fzf-tab/fzf-tab.plugin.zsh # fuzzy search autocomplete
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # fish like syntax highlighting
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # fish like autosuggestions
source ~/.config/zsh/omz-steals/sudo.zsh # prepend sudo to current or last command with double clicking esc
source ~/.config/zsh/omz-steals/history.zsh # quickly search history with hs or hsi

# alias
alias ll='ls -alF' # basic ls qol changes
alias la='ls -A'   # basic ls qol changes
alias l='ls -CF'   # basic ls qol changes
alias ls="ls --color" # make ls colorful
#alias bat="batcat"
alias nf="neofetch"
alias ff="fastfetch"
alias icat="kitty +kitten icat"
alias grep="grep --color=auto -i"
alias rg="rg -i"
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"
alias zyp="zypper"
alias sudo="sudo "

#  keybinds
bindkey "^[[3~" delete-char

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

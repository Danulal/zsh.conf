# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme # p10k
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh # fuzzy search autocomplete
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # fish like syntax highlighting
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # fish like autosuggestions
source ~/.zsh/omz-steals/sudo.zsh # prepend sudo to current or last command with double clicking esc
source ~/.zsh/omz-steals/history.zsh # quickly search history with hs or hsi

# alias
alias ll='ls -alF' # basic ls qol changes
alias la='ls -A'   # basic ls qol changes
alias l='ls -CF'   # basic ls qol changes
alias ls="ls --color" # make ls colorful
#alias bat="batcat"
alias nf="neofetch"
alias icat="kitty +kitten icat"
alias grep="grep --color=auto -i"
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

#  keybinds
bindkey "^[[3~" delete-char

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

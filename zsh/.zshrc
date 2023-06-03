# Path to oh-my-zsh installation.
export ZSH="/Users/bryan/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# oh my zsh plugins
plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rensay='cowsay -f ren'
alias ..="cd .."
alias gcm="git commit -m"
alias gck="git checkout"
alias gckm="git checkout master"
alias gckd="git checkout develop"
alias gadd="git add -A"
alias gpull="git pull"
alias gpush="git push"
alias gbr="git branch"
alias gs="git status"
alias updateZSHConfig="source ~/.zshrc"
alias openZSHConfig="vim ~/.zshrc"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias cdh="cd /run/media/bryan/Disco_1"
alias emacs="emacsclient -c -a 'emacs'"

# User configuration

export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH

# Add emacs bin folder to path
export PATH=~/.emacs.d/bin:$PATH

# Add gem to PATH
export PATH=/Users/bryan/.local/share/gem/ruby/3.0.0/bin:$PATH

# Add go to PATH
export PATH=$PATH:/usr/local/go/bin

export EDITOR='nvim'

# Esto es para utilizar j para brincar a directorios
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable vi mode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
export KEYTIMEOUT=1
# source /usr/share/nvm/init-nvm.sh

# FZF installation
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!{node_modules/*,.git/*}'"

export NVM_DIR="$HOME/.nvm"
# When updating the nvim default version these needs to be updated
export PATH=$NVM_DIR/versions/node/v18.15.0/bin:$PATH
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" --no-use # This loads nvm

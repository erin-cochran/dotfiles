source "$ZDOTDIR/alias.zsh"
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH:/snap/bin"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/erin/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

export ZSH="$HOME/.oh-my-zsh"
bindkey -v
ZSH_THEME="agnoster"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# Oh My ZSH plugins
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

# powerline
eval "$(powerline-daemon -q)"
. /usr/share/powerline/bindings/zsh/powerline.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# nvm
source /usr/share/nvm/init-nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# rbenv
eval "$(rbenv init - --no-rehash zsh)"
source $HOME/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

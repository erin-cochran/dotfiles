source "$ZDOTDIR/alias.zsh"
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH:/snap/bin"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/erin/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

export ZSH="$HOME/.oh-my-zsh"
bindkey -v
ZSH_THEME="agnoster"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# Oh My ZSH plugins
plugins=(git nvm zsh-syntax-highlighting zsh-autosuggestions)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# powerline
if which -s "powerline-daemon" &>/dev/null
then
  eval "$(powerline-daemon -q)"
  . /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# fzf
if which -s "fzf" &>/dev/null
then
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

# nvm
if [ -e /usr/share/nvm/init-nvm.sh ];then
  source /usr/share/nvm/init-nvm.sh
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# rbenv
if which -s "rbenv" &>/dev/null
then
  eval "$(rbenv init - --no-rehash zsh)"
  export PATH="$HOME/.rbenv/shims:$PATH"
fi

# CTRL+y for zsh-autosuggestions
bindkey '^y' autosuggest-accept

# Thefuck  for command correction (https://github.com/nvbn/thefuck)
if which -s "thefuck" &>/dev/null
then
  eval $(thefuck --alias)
fi

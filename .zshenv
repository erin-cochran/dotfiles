# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
if [ -z "${XDG_RUNTIME_DIR}" ];
then
  export XDG_RUNTIME_DIR="/tmp/${UID}-runtime-dir/"
  if [ ! -d "${XDG_RUNTIME_DIR}" ]; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi

# zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# locale
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# default applications
type "nvim" &>/dev/null && export EDITOR="nvim"
type "ghostty" &>/dev/null && export TERMINAL="ghostty"
type "firefox-developer-edition" &>/dev/null && export BROWSER="firefox-developer-edition"

#look good and remain compatible
export TERM="xterm-256color"

# gpg
export GPG_TTY=$(tty)

#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

neofetch

# env_vars
export myIP=$(curl ifconfig.me/ip)
export EDITOR=nvim
export XAUTHORITY=~/.Xauthority
#export BROWSER=firefox
xdg-settings set default-web-browser firefox.desktop
export TERMINAL=alacritty
export TERM=alacritty
export SUDO_PROMPT=$'\a'"[sudo] password for %p: "
PATH=$PATH:~/.scripts:~/.local/bin/

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ~/ junk cleaning
export ALSA_CONFIG_PATH="$HOME/.config/asoundrc"
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export LEIN_HOME="$XDG_DATA_HOME"/lein
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export NVM_DIR="$XDG_DATA_HOME"/nvm
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority # COMMENT THIS LINE OUT IF YOU USE LightDM
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GOPATH="$XDG_DATA_HOME"/go
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export NMBGIT="$XDG_DATA_HOME"/notmuch/nmbug
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export STACK_ROOT="$XDG_DATA_HOME"/stack
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export FCEUX_HOME="$XDG_CONFIG_HOME"/fceux
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export _JAVA_AWT_WM_NONREPARENTING=1
export LESSHISTFILE=-

# GUI on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

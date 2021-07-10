export  PATH="${HOME}/.local/bin:${PATH}"

# XDG directories
export XDG_RUNTIME_DIR="${HOME}/.cache" \
       XDG_CACHE_HOME="${HOME}/.cache" \
       XDG_DATA_HOME="${HOME}/.local/share" \
       XDG_CONFIG_HOME="${HOME}/.config"

# temp files location
export  LESSHISTFILE=/dev/null \
        HISTFILE="${XDG_CACHE_HOME}/.sh_history" \
        SQLITE_HISTORY="${XDG_CACHE_HOME}/.sqlite_history" \
        RXVT_SOCKET="${XDG_RUNTIME_DIR}/urxvtd" \
        XAUTHORITY="${XDG_DATA_HOME}/xauthority" \
        CARGO_HOME="${XDG_DATA_HOME}/cargo" \
        RUSTUP_HOME="${XDG_DATA_HOME}/rustup" \
        DOOMLOCALDIR="${XDG_DATA_HOME}/doom" \
        GOPATH="/tmp/.go"

# config files location
export  ZDOTDIR="${XDG_CONFIG_HOME}/zsh" \
        GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc" \
        WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc" \
        PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc" \
        ANDROID_SDK_HOME="${XDG_CONFIG_HOME}/android" \
        GNUPGHOME="${XDG_DATA_HOME}/gnupg" \
        XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc" \
        EMACSDIR="${XDG_CONFIG_HOME}/emacs" \
        DOOMDIR="${XDG_CONFIG_HOME}/doom" \
        XSERVERRC="${XDG_CONFIG_HOME}/X11/xserverrc"

# enable wayland
export  QT_QPA_PLATFORMTHEME=qt5ct \
        QT_QPA_PLATFORM=wayland-egl \
        CLUTTER_BACKEND=wayland \
        SDL_VIDEODRIVER=wayland \
        MOZ_ENABLE_WAYLAND=1

# apps default options
export  WINEPREFIX="${XDG_DATA_HOME}/wine" \
        STACK_ROOT="${XDG_DATA_HOME}/stack" \
        CCACHE_DIR="/tmp/ccache" \
        MOZ_X11_EGL=1 \
        PASSWORD_STORE_DIR="${XDG_DATA_HOME}/pass"

# default applications
export  INT_SHELL="fish" \
        TERMINAL="foot" \
        TERMINAL_FLOATING="foot -T float -w 900x600" \
        PAGER="nvimpager" \
        MANPAGER="nvimanpager" \
        GIT_PAGER="nvimgitpager" \
        FUZZYFINDER="fzf" \
        BROWSER="browser" \
        PDFREADER="zathura" \
        PDFVIEWER="zathura" \
        IMAGEVIEWER="imv" \
        EDITOR="emacs" \
        MEDIAPLAYER="mpv" \
        TORRENTCLIENT='transmission-gtk'

# generate pywal theme
if [ ! -e "${XDG_CACHE_HOME}/wal" ] && type wal >/dev/null 2>&1; then
  pywal-theme dark &
fi

# find git repo with config files
if [ -e /.gitconfigs ]; then
  export GITCONFIGS='/.gitconfigs'
else [ -e ~/.gitconfigs ];
  export GITCONFIGS="${HOME}/.gitconfigs"
fi

# detect if using sudo or doas
if type doas >/dev/null 2>&1; then
  export SUDO='doas'
else
  export SUDO='sudo'
fi

[ -f ~/.profile_local ] && . ~/.profile_local

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && [ ! -e "${XDG_CACHE_HOME}/.started_gui" ]; then
  type wal >/dev/null 2>&1 && until [ -e "${XDG_CACHE_HOME}/wal/colors-sway" ]; do echo "Waiting for pywal scheme..." && sleep 0.1; done
  touch "${XDG_CACHE_HOME}/.started_gui"
  exec sway --my-next-gpu-wont-be-nvidia
else
  exec $INT_SHELL
fi

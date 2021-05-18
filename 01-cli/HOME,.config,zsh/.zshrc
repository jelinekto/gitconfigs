# zmodload zsh/zprof
# set -x

sleep 0.05
# powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load zsh-defer & powerlevel10k plugins early enough
ZPLUGDIR="$XDG_DATA_HOME/zsh/plugged"
if [ -e "$ZPLUGDIR/powerlevel10k/powerlevel10k.zsh-theme" ]; then
  [ ! -e "${XDG_DATA_HOME}/zsh/gitstatus" ] && mkdir -p "${XDG_DATA_HOME}/zsh/gitstatus"
  [ ! -e "${XDG_CACHE_HOME}/gitstatus" ] && ln -s "${XDG_DATA_HOME}/zsh/gitstatus" "$XDG_CACHE_HOME"
  POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
  source "$ZPLUGDIR/powerlevel10k/powerlevel10k.zsh-theme"
  source "$ZDOTDIR"/p10k.zsh
fi
if [ -e "$ZPLUGDIR/zsh-defer/zsh-defer.plugin.zsh" ]; then
  source "$ZPLUGDIR/zsh-defer/zsh-defer.plugin.zsh"
fi

# Variables
typeset -gaU cdpath fpath mailpath path
export  CORRECT_IGNORE='_*' \
        WORDCHARS='-' \
        HISTFILE="${XDG_DATA_HOME}/zsh/history"
        HISTSIZE=1000000000 \
        SAVEHIST=${HISTSIZE} \
        KEYTIMEOUT=1 \
        LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.cfg=00;32:*.conf=00;32:*.diff=00;32:*.doc=00;32:*.ini=00;32:*.log=00;32:*.patch=00;32:*.pdf=00;32:*.ps=00;32:*.tex=00;32:*.txt=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

# Basic options
setopt  extendedglob \
        autocd \
        correct \
        nobeep \
        nohup \
        interactivecomments \
        autopushd \
        pushdignoredups \
        nobgnice \
        rmstarsilent \
        noflowcontrol \
        multios \
        incappendhistory \
        sharehistory \
        histignorealldups \
        histignorespace \
        histsavenodups \
        histreduceblanks \
        menu_complete
## use signal to reload config
trap "exec zsh" USR1

# Load most things in the background
zsh-defer -1 -2 source "$ZDOTDIR"/defer.zsh || source "$ZDOTDIR"/defer.zsh

# Change cursor shape based on vi mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
    [[ $1 = "block" ]]; then
    echo -ne "\e[1 q"
  elif [[ ${KEYMAP} == main ]] ||
    [[ ${KEYMAP} == viins ]] ||
    [[ ${KEYMAP} = "" ]] ||
    [[ $1 = "beam" ]]; then
    echo -ne "\e[5 q"
  fi
}
zle -N zle-keymap-select
zle-line-init() {
  zle -K viins
  echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne "\e[5 q"
cursor_preexec() { echo -ne "\e[5 q" ;}
preexec_functions+=(cursor_preexec)

# powerlevel10k instant prompt
(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize

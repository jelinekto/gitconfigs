# Aliases
## regular
alias     :q="exit" \
          s="$SUDO " \
          sudo="sudo " \
          v="nvim" \
          grep="egrep --color=auto" \
          egrep="egrep --color=auto" \
          l="ls --color=auto --group-directories-first" \
          ls="ls --color=auto --group-directories-first" \
          la="ls -NAlh --color=auto --group-directories-first" \
          ll="ls -Nlh --color=auto --group-directories-first" \
          cp="cp -ai --reflink=auto --strip-trailing-slashes" \
          mv="mv -i --strip-trailing-slashes" \
          rm="rm -I --one-file-system" \
          rmr="rm -R -I --one-file-system" \
          rmrf="rm -Rf -I --one-file-system" \
          ln="ln -fis" \
          mkdir="mkdir -p" \
          free="free -h" \
          du="du -h" \
          df="df -h" \
          rsync="rsync -aHSv --info=progress2" \
          youtube-dl="noglob youtube-dl" \
          wget="noglob wget" \
          curl="noglob curl" \
          userctl="systemctl --user" \
          mitmproxy="mitmproxy --set confdir=$XDG_CONFIG_HOME/mitmproxy"\
          mitmweb="mitmweb --set confdir=$XDG_CONFIG_HOME/mitmproxy"\
          zstd="zstd -v -T$(nproc) --ultra" \
          zstdl="zstd -v -T$(nproc) --long=31 --ultra" \
          lrzip="lrzip -p$(nproc) -L9 -U -T" \
          bash="HISTFILE=${XDG_CACHE_HOME}/.bash_history bash" \
          sh="HISTFILE=${XDG_CACHE_HOME}/.sh_history sh" \
          ksh="HISTFILE=${XDG_CACHE_HOME}/.ksh_history sh" \
          mksh="HISTFILE=${XDG_CACHE_HOME}/.ksh_history sh" \
          make="make -j $(nproc)" \
          ccat="highlight -O ansi" \
          ncm="ncmpcpp" \
          mine="s chown $(whoami):$(whoami)" \
          ytf="youtube-dl -f" \
          ytF="youtube-dl -F" \
          dmesg="dmesg -e" \
          fstab="$EDITOR /etc/fstab" \
          rld='pkill -USR1 zsh' \
          zconf="$EDITOR "$ZDOTDIR"/.zshrc "$ZDOTDIR"/*.zsh" \
          nvimrc="$EDITOR ~/.config/nvim/init.vim" \
          vimrc="$EDITOR ~/.config/nvim/init.vim" \
          dd='dd status=progress bs=4M' \
          cdu="$SUDO compsize -x" \
          cstatus="s git -C $GITCONFIGS status" \
          cdiff="s git -C $GITCONFIGS diff" \
          cpull="s git -C $GITCONFIGS pull origin master; s chown -R $(whoami):$(whoami) $GITCONFIGS/**/HOME,*" \
          cpush="s git -C $GITCONFIGS add -A .; s git -C $GITCONFIGS commit -a -m $(date +%F_%T); s git -C $GITCONFIGS push origin master" \
          creset="s git -C $GITCONFIGS reset --hard; s chown -R ${USER}:${USER} $GITCONFIGS/**/HOME,*" \
          bsu="s btrfs subvolume" \
          bsuc="s btrfs subvolume create" \
          bsud="s btrfs subvolume delete" \
          bsul="s btrfs subvolume list -t" \
          bsusnap="s btrfs subvolume snapshot -r" \
          bsuget="s btrfs subvolume get-default" \
          bsuset="s btrfs subvolume set-default" \
          bsushow="s btrfs subvolume show" \
          bfi="s btrfs filesystem" \
          bfidf="s btrfs filesystem df" \
          bfidu="s btrfs filesystem du -s" \
          bfishow="s btrfs filesystem show" \
          bfidefrag="s btrfs filesystem defrag -rv" \
          bfius="s btrfs filesystem usage" \
          bpget="s btrfs property get" \
          bpset="s btrfs property set" \
          bbals="s btrfs balance start" \
          bbalp="s btrfs balance pause" \
          bbalc="s btrfs balance cancel" \
          bbalr="s btrfs balance resume" \
          bbalst="s btrfs balance status" \
          pacs='yay -S' \
          pacss='yay -Ss' \
          syu='yay -Syu' \
          Syu='yay -Syu' \
          pacd="yay -Rns" \
          depclean='yay -Rns $(yay -Qqdt)' \
          pacache="s rm -R /tmp/.pacman_cache /tmp/yay" \
          reswap="for swap in \$(swapon --noheadings | awk '{print \$1}'); do s swapoff \$swap; s swapon \$swap; done" \
          cpuvuln="grep . /sys/devices/system/cpu/vulnerabilities/*" \
          splitflac="shnsplit -f *.cue -o flac\ flac\ -0\ -o\ %f\ - -t %n\ %t"
## global
alias -g  G="| grep" \
          Gi="| grep -i" \
          Gv="| grep -v" \
          Gvi="| grep -iv" \
          Giv="| grep -iv" \
          H="| head" \
          T="| tail" \
          P="| $PAGER" \
          DT="| s tee" \
          S="| sort -h" \
          U="| uniq" \
          C="| cut" \
          W="| wc -l" \
          Wc="| wc -c" \
          Ww="| wc -w" \
          Sed="| sed 's|||g'" \
          Tr="| tr" \
          Trd="| tr -d ''" \
          Q=">/dev/null 2>&1"
## suffixes
alias -s  {part,PART,mp4,MP4,avi,AVI,mov,MOV,webm,WEBM,mkv,MKV,mpg,MPG,ogv,OGV}="fork $MEDIAPLAYER" \
          {wav,WAV,flac,FLAC,wv,WV,opus,OPUS,ogg,OGG,mp3,MP3,m4a,M4A,ape,APE}="$MEDIAPLAYER" \
          {pdf,PDF}="fork $PDFREADER" \
          {txt,TXT,tex,TEX,rmd,RMD,md,MD,srt,SRT,ini,INI,json,JSON,yaml,YAML,yml,YML,js,JS}="$EDITOR" \
          {doc,DOC,xls,XLS,ppt,PPT}{x,X,}="fork libreoffice" \
          {patch,PATCH,conf,CONF}="$EDITOR" \
          {zsh,ZSH}="$EDITOR" \
          {jpg,JPG,jpeg,JPEG,gif,GIF,png,PNG,tiff,TIFF,webp,WEBP,bmp,BMP,svg,SVG}="fork $IMAGEVIEWER" \
          {zst,ZST}="zstd -vd --long=31 --ultra" \
          {tar,TAR,gzip,GZIP,xz,XZ,bz2,BZ2,lzo,LZO,lzma,LZMA,cpio,CPIO,rpm,RPM,rar,RAR,deb,DEB,zip,ZIP,7z,7Z}="unp" \
          {lz4,LZ4}="lz4 -d" \
          {html,HTML,htm,HTM,php,PHP}="fork $BROWSER" \
          {torrent,TORRENT}="fork $TORRENTCLIENT"

# Enable tab completion
autoload -U compinit
_comp_options+=(globdots)
zstyle ":completion:*" rehash true
zstyle ":completion:*" menu yes select=0
zstyle ":completion:*" group-name ""
zstyle ":completion:*:cd:*" ignore-parents parent pwd
zstyle ":completion:history-words:*" menu yes
zstyle ":completion:*" matcher-list "" "r:|?=** m:{a-z\-}={A-Z\_}"
zstyle ':completion:*' hosts $(grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' ~/.ssh/known_hosts 2>/dev/null)
zmodload zsh/complist
compinit

compdef mosh=ssh
compdef fork=exec
# compdef passfill=pass

# Key bindings
bindkey -v
## unbind : in normal mode
noop() true
zle -N noop
bindkey -M vicmd ":" noop
## vi-style redo
bindkey -M vicmd "^R" redo
## get Shift-Tab and Delete working
bindkey "^[[Z" reverse-menu-complete
bindkey -M viins "\e[3~" delete-char
bindkey -M vicmd "\e[3~" delete-char
## emacs-style bindings in insert mode
bindkey -M viins "^a"    beginning-of-line
bindkey -M viins "^e"    end-of-line
bindkey -M viins "^k"    kill-line
bindkey -M viins "^p"    up-line-or-history
bindkey -M viins "^n"    down-line-or-history
bindkey -M viins "^y"    yank
bindkey -M viins "^w"    backward-kill-word
bindkey -M viins "^u"    backward-kill-line
bindkey -M viins "^h"    backward-delete-char
bindkey -M viins "^?"    backward-delete-char
bindkey -M viins "^_"    undo
bindkey -M viins "\eOH"  beginning-of-line
bindkey -M viins "\eOF"  end-of-line
bindkey -M viins "\e[2~" overwrite-mode
bindkey -M viins "\ef"   forward-word
bindkey -M viins "\eb"   backward-word
bindkey -M viins "^f"    forward-char
bindkey -M viins "^b"    backward-char
bindkey -M viins "\ed"   kill-word
bindkey -M viins "^[^?"  backward-kill-word
## completion menu
bindkey -M menuselect "^h" vi-backward-char
bindkey -M menuselect "^k" vi-up-line-or-history
bindkey -M menuselect "^l" vi-forward-char
bindkey -M menuselect "^j" vi-down-line-or-history
bindkey -M menuselect "^n" vi-down-line-or-history
bindkey -M menuselect "^p" vi-up-line-or-history
bindkey -M menuselect "/" history-incremental-search-forward
bindkey -M menuselect "?" history-incremental-search-backward
bindkey -M menuselect "\e" send-break
bindkey -M menuselect "^g" accept-and-infer-next-history
bindkey -M menuselect "^o" accept-and-hold
## edit line in $EDITOR
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd "^[n" edit-command-line
bindkey -M viins "^[n" edit-command-line

# Plugins
## managed separately
[ -e /usr/share/autojump/autojump.zsh ] && source /usr/share/autojump/autojump.zsh

## list of plugins
typeset -gU plugins; plugins=(
  "romkatv/zsh-defer"
  "romkatv/powerlevel10k"
  "zsh-users/zsh-completions"
  "zsh-users/zsh-history-substring-search"
  "zdharma/fast-syntax-highlighting"
  "zsh-users/zsh-autosuggestions"
  "kutsan/zsh-system-clipboard"
)

source "${ZPLUGDIR}/zsh-completions/zsh-completions.plugin.zsh"

ZSH_SYSTEM_CLIPBOARD_USE_WL_CLIPBOARD=1
source "${ZPLUGDIR}/zsh-system-clipboard/zsh-system-clipboard.zsh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="30"
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
source "${ZPLUGDIR}/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

source "${ZPLUGDIR}/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=white,fg=black"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold"
HISTORY_SUBSTRING_SEARCH_FUZZY=1
bindkey -M vicmd "^[[A" history-substring-search-up
bindkey -M viins "^[[A" history-substring-search-up
bindkey -M vicmd "^[[B" history-substring-search-down
bindkey -M viins "^[[B" history-substring-search-down
bindkey -M vicmd "^P" history-substring-search-up
bindkey -M viins "^P" history-substring-search-up
bindkey -M vicmd "^N" history-substring-search-down
bindkey -M viins "^N" history-substring-search-down
bindkey -M vicmd "k" history-substring-search-up
bindkey -M vicmd "j" history-substring-search-up

source "${ZPLUGDIR}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
cat > "${XDG_CACHE_HOME}/.zsh_colors.ini" <<"EOF"
[base]
default          = none
unknown-token    = red,bold
commandseparator = none
redirection      = 248
here-string-tri  = 248
here-string-text = none
here-string-var  = 14
exec-descriptor  = 13
comment          = 7
correct-subtle   = 15
incorrect-subtle = 15
subtle-separator = 15
subtle-bg        = 15
secondary        =
[command-point]
reserved-word  = 9
builtin        = 9
function       = 15,bold
command        = 15,bold
alias          = 15,bold
global-alias   = 15,bold
suffix-alias   = 15,bold
subcommand     = 15
precommand     = 11
hashed-command = 9,bg:10
single-sq-bracket = 15
double-sq-bracket = 15
double-paren   = 14
[paths]
path          = 15
pathseparator =
path-to-dir   = 15
globbing      = 15
globbing-ext  = 15
[brackets]
paired-bracket = bg:8
bracket-level-1 = 15
bracket-level-2 = 250
bracket-level-3 = 248
[arguments]
single-hyphen-option   = 15
double-hyphen-option   = 15
back-quoted-argument   = none
single-quoted-argument = 10
double-quoted-argument = 10
dollar-quoted-argument = 10
[in-string]
back-dollar-quoted-argument = 10
back-or-dollar-double-quoted-argument = 14
[other]
variable             = 14
assign               = none
assign-array-bracket = none
history-expansion    = blue,bold
[math]
mathvar = 14
mathnum = 13
matherr = 1
[for-loop]
forvar = 14
fornum = 13
foroper = 208
; separator
forsep = 9,bg:10
[case]
case-input       = 14
case-parentheses = 9
case-condition   = 15
EOF
[ ! "$FAST_THEME_NAME" = ".zsh_colors" ] && fast-theme "${XDG_CACHE_HOME}/.zsh_colors.ini" >/dev/null

# Custom functions
function fork() {
  $@ 1>/dev/null 2>/dev/null &!
}

function mkcd() {
  mkdir -p "$1" && cd "$1"
}

function g() {
  local dir="$(j "$@" | head -n 1)"
  [ -e "$dir" ] && cd "$dir"
}
_autojump-go() {
  local target="$(sort -hr ~/.local/share/autojump/autojump.txt | cut -f 2 | $FUZZYFINDER)"
  [ -e "$target" ] && g "$target"
  BUFFER=' '
  zle accept-line
}
zle -N _autojump-go
bindkey -M vicmd "^k" _autojump-go
bindkey -M viins "^k" _autojump-go

f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

## compile zsh files
function jit() { [[ ${(%):-%#} == "#" || $1.zwc -nt $1 || ! -w ${1:h} ]] || zcompile $1 }
function jit-source() {
  [[ -e $1 ]] || return
  jit $1
  source $1
}

## autocomplete files and dirs on empty line
function expand-or-complete-or-list-files() {
    if [ -z "${BUFFER// /}" ]; then
        BUFFER+="ls "
        CURSOR+=3
        fzf-tab-complete 2>/dev/null || zle expand-or-complete
        BUFFER="${BUFFER//ls }"
    else
        fzf-tab-complete 2>/dev/null || zle expand-or-complete
    fi
}
zle -N expand-or-complete-or-list-files
bindkey "^I" expand-or-complete-or-list-files

## fuzzy history search
function fzy_history() {
  local cmd=$(history -rn 0 | $FUZZYFINDER -q "$BUFFER")
  [ ! -z "$cmd" ] && BUFFER="$cmd" && zle end-of-line
  zle reset-prompt
}
zle -N fzy_history
bindkey -M viins "^R" fzy_history

## prepend stuff to command line
function prepend-sudo {
  if [ ! -n "$BUFFER" ]; then
    zle up-history
  fi
  if [[ ! "$BUFFER" = "$SUDO "* ]]; then
    BUFFER="s $BUFFER"
    CURSOR+=2
  fi
}
zle -N prepend-sudo
bindkey -M viins "^X" prepend-sudo
bindkey -M vicmd "^X" prepend-sudo

function prepend-fork {
  if [[ ! "$BUFFER" = "fork "* ]]; then
    BUFFER="fork $BUFFER"
    CURSOR+=5
  fi
}
zle -N prepend-fork
bindkey -M viins "^Q" prepend-fork
bindkey -M vicmd "^Q" prepend-fork

## simple plugin install/update function
function plugup() {
  for repo in $plugins; do
    local pluginName="$(echo $repo | cut -f 2 -d "/")"
    local pluginDir="${ZPLUGDIR}/${pluginName}"
    mkdir -p "$pluginDir"
    if [ -d "$pluginDir"/.git ]; then
      echo "Updating ${repo}..."
      (git -C "$pluginDir" fetch --depth=1 origin master &> /dev/null
      git -C "$pluginDir" reset --hard origin/master &> /dev/null
      git -C "$pluginDir" gc --prune=now 1>/dev/null &> /dev/null) &
    else
      echo "Fetching ${repo}..."
      git clone --depth=1 "https://github.com/${repo}.git" "$pluginDir" &> /dev/null &
      echo
    fi
  for plugin in $(ls "$ZPLUGDIR"); do
    if ! echo $plugins | grep -q "/${plugin}"; then
      rm -Rf "${ZPLUGDIR}/${plugin}"
    fi
  done
  done
  wait
  for file in $(fd -H ".zsh" "$ZPLUGDIR" | grep -v ".zwc$"); do
    jit "$file"
  done
  [ -e "$ZPLUGDIR/zsh-completions/src" ] && for f in "$ZPLUGDIR/zsh-completions/src"/*; do
    [[ ! "$f" = *".zwc" ]] && jit "$f"
  done
  pkill -USR1 zsh
}

## spawn new foot terminal in current directory, set zsh window title
_zshtitle() {
  echo -n -e "\033]0;zsh: "${PWD}"\007"
}
_urlencode() {
	local length="${#1}"
	for (( i = 0; i < length; i++ )); do
		local c="${1:$i:1}"
		case $c in
			%) printf '%%%02X' "'$c" ;;
			*) printf "%s" "$c" ;;
		esac
	done
}
osc7_cwd() {
	printf '\e]7;file://%s%s\e\\' "$HOSTNAME" "$(_urlencode "$PWD")"
  _zshtitle
}
autoload -Uz add-zsh-hook
add-zsh-hook -Uz chpwd osc7_cwd
_zshtitle

# compile zsh files
for f in "$ZDOTDIR"/*.zsh; do
  jit "$f"
done
jit "$ZDOTDIR"/.zshrc

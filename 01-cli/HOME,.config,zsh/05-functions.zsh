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
        zle expand-or-complete
        BUFFER="${BUFFER//ls }"
    else
        zle expand-or-complete
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

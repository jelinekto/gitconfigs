plugload() {
  plugins+=("$1")

  local USERNAME="$(cut -f 1 -d / <<< $1)"
  local REPO="$(cut -f 2 -d / <<< $1)"

  if [ ! -e "${ZPLUGDIR}/${REPO}" ]; then
    echo "Fetching plugin ${1}..."
    git clone --depth=1 "https://github.com/${1}.git" "${ZPLUGDIR}/${REPO}"
  fi

  source "${ZPLUGDIR}/${REPO}/${REPO}.plugin.zsh"
}

[ -e /usr/share/autojump/autojump.zsh ] && source /usr/share/autojump/autojump.zsh

plugload "zsh-users/zsh-completions"

plugload "zsh-users/zsh-system-clipboard"
ZSH_SYSTEM_CLIPBOARD_USE_WL_CLIPBOARD=1

plugload "zsh-users/zsh-autosuggestions"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="100"
# ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

plugload "zsh-users/zsh-history-substring-search"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=cyan,fg=black"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold"
HISTORY_SUBSTRING_SEARCH_FUZZY=1
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

plugload "zdharma/fast-syntax-highlighting"
cat > "${XDG_CACHE_HOME}/.zsh_colors.ini" <<"EOF"
[base]
default          = none
unknown-token    = 9,bold
commandseparator = 15,bold
redirection      = 15,bold
here-string-tri  = none
here-string-text = none
here-string-var  = 11
exec-descriptor  = none
comment          = 8
correct-subtle   = 8
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
# [ ! "$FAST_THEME_NAME" = ".zsh_colors" ] && fast-theme "${XDG_CACHE_HOME}/.zsh_colors.ini" >/dev/null
fast-theme "${XDG_CACHE_HOME}/.zsh_colors.ini" >/dev/null

# # function for installing/updating plugins
# function plugup() {
#   for repo in $plugins; do
#     local pluginName="$(echo $repo | cut -f 2 -d "/")"
#     local pluginDir="${ZPLUGDIR}/${pluginName}"
#     mkdir -p "$pluginDir"
#     if [ -d "$pluginDir"/.git ]; then
#       echo "Updating ${repo}..."
#       (git -C "$pluginDir" fetch --depth=1 origin master &> /dev/null
#       git -C "$pluginDir" reset --hard origin/master &> /dev/null
#       git -C "$pluginDir" gc --prune=now 1>/dev/null &> /dev/null) &
#     else
#       echo "Fetching ${repo}..."
#       git clone --depth=1 "https://github.com/${repo}.git" "$pluginDir" &> /dev/null &
#       echo
#     fi
#   for plugin in $(ls "$ZPLUGDIR"); do
#     if ! echo $plugins | grep -q "/${plugin}"; then
#       rm -Rf "${ZPLUGDIR}/${plugin}"
#     fi
#   done
#   done
#   wait
#   for file in $(fd -H ".zsh" "$ZPLUGDIR" | grep -v ".zwc$"); do
#     jit "$file"
#   done
#   [ -e "$ZPLUGDIR/zsh-completions/src" ] && for f in "$ZPLUGDIR/zsh-completions/src"/*; do
#     [[ ! "$f" = *".zwc" ]] && jit "$f"
#   done
#   pkill -USR1 zsh
# }

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

type mosh >/dev/null 2>&1 && compdef mosh=ssh
type fork >/dev/null 2>&1 && compdef fork=exec
type pass >/dev/null 2>&1 && compdef passfill=pass

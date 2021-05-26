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

# unbind : in normal mode
noop() true
zle -N noop
bindkey -M vicmd ":" noop

# vi-style redo
bindkey -M vicmd "^R" redo

# get Shift-Tab and Delete working
bindkey "^[[Z" reverse-menu-complete
bindkey -M viins "\e[3~" delete-char
bindkey -M vicmd "\e[3~" delete-char

# emacs-style bindings in insert mode
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

# completion menu
bindkey -M menuselect "^h" vi-backward-char
bindkey -M menuselect "^k" vi-up-line-or-history
bindkey -M menuselect "^l" vi-forward-char
bindkey -M menuselect "^j" vi-down-line-or-history
bindkey -M menuselect "^n" vi-down-line-or-history
bindkey -M menuselect "^p" vi-up-line-or-history
bindkey -M menuselect "/"  history-incremental-search-forward
bindkey -M menuselect "?"  history-incremental-search-backward
bindkey -M menuselect "\e" send-break
bindkey -M menuselect "^g" accept-and-infer-next-history
bindkey -M menuselect "^o" accept-and-hold

# edit line in $EDITOR
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd "^[n" edit-command-line
bindkey -M viins "^[n" edit-command-line

# zsh-history-substring-search plugin
bindkey -M vicmd "^[[A" history-substring-search-up
bindkey -M viins "^[[A" history-substring-search-up
bindkey -M vicmd "^[[B" history-substring-search-down
bindkey -M viins "^[[B" history-substring-search-down
bindkey -M vicmd "^P"   history-substring-search-up
bindkey -M viins "^P"   history-substring-search-up
bindkey -M vicmd "^N"   history-substring-search-down
bindkey -M viins "^N"   history-substring-search-down
bindkey -M vicmd "k"    history-substring-search-up
bindkey -M vicmd "j"    history-substring-search-up

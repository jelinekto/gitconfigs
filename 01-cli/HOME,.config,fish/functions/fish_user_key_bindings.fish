# key bindings
bind           \eo 'fish_commandline_prepend o'
bind -M insert \eo 'fish_commandline_prepend o'
bind           \es 'fish_commandline_prepend s'
bind -M insert \es 'fish_commandline_prepend s'
## fish-global-abbreviation
bind           ' ' '__gabbr_expand; commandline -i " "'
bind -M insert ' ' '__gabbr_expand; commandline -i " "'
## fzf
bind           \co   __fzf_search_current_dir
bind -M insert \co   __fzf_search_current_dir
bind           \cr   __fzf_search_history
bind -M insert \cr   __fzf_search_history
bind           \e\cv '__fzf_search_shell_variables (set --show | psub) (set --names | psub)'
bind -M insert \e\cv '__fzf_search_shell_variables (set --show | psub) (set --names | psub)'
bind           \e\cl __fzf_search_git_log
bind -M insert \e\cl __fzf_search_git_log
bind           \e\cs __fzf_search_git_status
bind -M insert \e\cs __fzf_search_git_status

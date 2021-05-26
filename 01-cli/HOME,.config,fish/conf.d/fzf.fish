set --global fzf_search_vars_cmd '__fzf_search_shell_variables (set --show | psub) (set --names | psub)'

bind \co __fzf_search_current_dir
bind \cr __fzf_search_history
bind --mode insert \co __fzf_search_current_dir
bind --mode insert \cr __fzf_search_history
# bind \e\cv $fzf_search_vars_cmd
# bind --mode insert \e\cv $fzf_search_vars_cmd
# bind \e\cl __fzf_search_git_log
# bind --mode insert \e\cl __fzf_search_git_log
# bind \e\cs __fzf_search_git_status
# bind --mode insert \e\cs __fzf_search_git_status

set --global --export FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'

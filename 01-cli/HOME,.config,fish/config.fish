set -U fish_greeting

# key bindings
set -U fish_key_bindings fish_hybrid_key_bindings

# colours
set -U fish_color_autosuggestion brblack
set -U fish_color_cancel brblack
set -U fish_color_comment brblack
set -U fish_color_command brred
set -U fish_color_keyword brmagenta
set -U fish_color_end normal --bold
set -U fish_color_redirection normal --bold
set -U fish_color_error --bold brred
set -U fish_color_escape brcyan
set -U fish_color_operator bryellow
set -U fish_color_param brcyan
set -U fish_color_quote brgreen
set -U fish_color_search_match --reverse
set -U fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -U fish_color_valid_path bryellow
## pager colours
set -U fish_pager_color_completion normal
set -U fish_pager_color_description brblack
set -U fish_pager_color_prefix cyan\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -U fish_pager_color_progress --reverse
set -U fish_pager_color_selected_background --background=brcyan
set -U fish_pager_color_selected_prefix black
set -U fish_pager_color_selected_completion black
## prompt colours
set -U fish_color_cwd --bold brblue
set -U fish_color_cwd_root --bold brblue
set -U fish_color_status --bold brred

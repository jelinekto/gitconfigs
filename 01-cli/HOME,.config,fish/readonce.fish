set -U fish_greeting
set -U fish_key_bindings fish_hybrid_key_bindings
set -U fish_handle_reflow 0
set -U fish_escape_delay_ms 10

# list plugins
set -U fish_plugins PatrickF1/fzf.fish jethrokuan/z jorgebucaran/autopair.fish jorgebucaran/replay.fish markcial/upto IlanCosman/tide re3turn/fish-global-abbreviation 

# abbreviations
abbr -a :q "exit"
abbr -a l "ls --color=auto --group-directories-first"
abbr -a ls "ls --color=auto --group-directories-first"
abbr -a la "ls -NAlh --color=auto --group-directories-first"
abbr -a ll "ls -Nlh --color=auto --group-directories-first"
abbr -a cp "cp -ai --reflink=auto --strip-trailing-slashes"
abbr -a mv "mv -i --strip-trailing-slashes"
abbr -a rm "rm -I --one-file-system"
abbr -a grep "egrep --color=auto"
abbr -a egrep "egrep --color=auto"
abbr -a v "$EDITOR"
abbr -a rmr "rm -I --one-file-system -R"
abbr -a rmrf "rm -I --one-file-system -Rf"
abbr -a ln "ln -fis"
abbr -a free "free -h"
abbr -a sort "sort -h"
abbr -a du "du -hs"
abbr -a df "df -h"
abbr -a g 'grep'
abbr -a gi 'grep -i'
abbr -a gv 'grep -v'
abbr -a giv 'grep -iv'
abbr -a mkdir "mkdir -p"
abbr -a rsync "rsync -aHSv --info=progress2"
abbr -a ss "s systemctl"
abbr -a us "systemctl --user"
abbr -a zstd "zstd -v -T(nproc) --ultra"
abbr -a zstdl "zstd -v -T(nproc) --long=31 --ultra"
abbr -a lrzip "lrzip -p(nproc) -L9 -U -T"
abbr -a make "make -j (nproc)"
abbr -a ccat "highlight -O ansi"
abbr -a ncm "ncmpcpp"
abbr -a mine "s chown (whoami):(whoami)"
abbr -a ytf "youtube-dl -f"
abbr -a ytF "youtube-dl -F"
abbr -a dmesg "dmesg -e"
abbr -a fstab "$EDITOR /etc/fstab"
abbr -a rld "rm $XDG_CONFIG_HOME/fish/fish_variables; fish -c 'source $XDG_CONFIG_HOME/fish/readonce.fish'"
abbr -a zconf "$EDITOR "$ZDOTDIR"/.zshrc "$ZDOTDIR"/*.zsh"
abbr -a fconf "$EDITOR $XDG_CONFIG_HOME/fish/*.fish"
abbr -a nvimrc "$EDITOR ~/.config/nvim/init.vim"
abbr -a vimrc "$EDITOR ~/.config/nvim/init.vim"
abbr -a dd 'dd status=progress bs=4M'
abbr -a cdu "$SUDO compsize -x"
abbr -a cstatus "s git -C $GITCONFIGS status"
abbr -a cdiff "s git -C $GITCONFIGS diff"
abbr -a cpull "s git -C $GITCONFIGS pull origin master; s chown -R (whoami):(whoami) $GITCONFIGS/**/HOME,*"
abbr -a cpush "s git -C $GITCONFIGS add -A .; s git -C $GITCONFIGS commit -a -m (date +%F_%T); s git -C $GITCONFIGS push origin master"
abbr -a creset "s git -C $GITCONFIGS reset --hard; s chown -R {$USER}:{$USER} $GITCONFIGS/**/HOME,*"
abbr -a ga "git add"
abbr -a gb "git branch"
abbr -a gbl "git blame"
abbr -a gc "git clone"
abbr -a gch "git checkout"
abbr -a gcl "git clean"
abbr -a gco "git config"
abbr -a gcr "git crypt"
abbr -a gd "git diff"
abbr -a gf "git fetch"
abbr -a gg "git grep"
abbr -a ggc "git gc"
abbr -a gp "git pull"
abbr -a gps "git push"
abbr -a gr "git remote"
abbr -a gs "git status"
abbr -a bsu "s btrfs subvolume"
abbr -a bsuc "s btrfs subvolume create"
abbr -a bsud "s btrfs subvolume delete"
abbr -a bsul "s btrfs subvolume list -t"
abbr -a bsusnap "s btrfs subvolume snapshot -r"
abbr -a bsuget "s btrfs subvolume get-default"
abbr -a bsuset "s btrfs subvolume set-default"
abbr -a bsushow "s btrfs subvolume show"
abbr -a bfi "s btrfs filesystem"
abbr -a bfidf "s btrfs filesystem df"
abbr -a bfidu "s btrfs filesystem du -s"
abbr -a bfishow "s btrfs filesystem show"
abbr -a bfidefrag "s btrfs filesystem defrag -rv"
abbr -a bfius "s btrfs filesystem usage"
abbr -a bpget "s btrfs property get"
abbr -a bpset "s btrfs property set"
abbr -a bbals "s btrfs balance start"
abbr -a bbalp "s btrfs balance pause"
abbr -a bbalc "s btrfs balance cancel"
abbr -a bbalr "s btrfs balance resume"
abbr -a bbalst "s btrfs balance status"
abbr -a pacs 'paru -S'
abbr -a pacss 'paru -Ss'
abbr -a syu 'paru -Syu'
abbr -a Syu 'paru -Syu'
abbr -a pacd "paru -Rns"
abbr -a depclean 'paru -Rns (paru -Qqdt)'
abbr -a reswap "for swap in (swapon --noheadings | awk '{print $1}'); do s swapoff $swap; s swapon $swap; done"
abbr -a cpuvuln "grep . /sys/devices/system/cpu/vulnerabilities/*"
abbr -a splitflac "shnsplit -f *.cue -o flac flac -0 -o %f - -t %n %t"

# plugins
## fish-global-abbreviation
gabbr -a G "| grep"
gabbr -a Gi "| grep -i"
gabbr -a Gv "| grep -v"
gabbr -a Gvi "| grep -iv"
gabbr -a Giv "| grep -iv"
gabbr -a A "| awk"
gabbr -a H "| head -n"
gabbr -a T "| tail -n"
gabbr -a P "| $PAGER"
gabbr -a DT "| s tee"
gabbr -a S "| sort -h"
gabbr -a U "| uniq"
gabbr -a C "| cut -f"
gabbr -a W "| wc -l"
gabbr -a Wc "| wc -c"
gabbr -a Ww "| wc -w"
gabbr -a Tr "| tr"
gabbr -a Trd "| tr -d ''"
gabbr -a Q ">/dev/null 2>&1"
## z
set -U Z_CMD "j"
## fzf
set -U fzf_fish_custom_keybindings
set -U fzf_fd_opts --hidden --exclude=.git
## tide prompt
### left side
set -U tide_left_prompt_item_separator_same_color ' '
set -U tide_left_prompt_item_separator_diff_color ''
set -U tide_left_prompt_items context pwd git jobs prompt_char vi_mode
set -U tide_context_root_color bryellow
set -U tide_context_ssh_color brgreen
set -U tide_git_branch_color brmagenta
set -U tide_git_conflicted_color brmagenta
set -U tide_git_dirty_color brmagenta
set -U tide_git_operation_color brmagenta
set -U tide_git_staged_color brmagenta
set -U tide_git_stash_color brmagenta
set -U tide_git_untracked_color brmagenta
set -U tide_git_upstream_color brmagenta
set -U tide_jobs_color brcyan
set -U tide_jobs_verbose true
set -U tide_prompt_char_failure_color brred
set -U tide_prompt_char_success_color brgreen
set -U tide_prompt_char_vi_default_icon '$'
set -U tide_prompt_char_vi_insert_icon '$'
set -U tide_prompt_char_vi_replace_icon '$'
set -U tide_prompt_char_vi_visual_icon '$'
set -U tide_pwd_color_anchors brblue
set -U tide_pwd_color_dirs brblue
set -U tide_pwd_color_truncated_dirs brcyan
set -U tide_pwd_truncate_margin 1000
set -U tide_status_failure_color brred
set -U tide_status_failure_icon '↵'
set -U tide_vi_mode_default_bg_color black
set -U tide_vi_mode_insert_bg_color black
set -U tide_vi_mode_replace_bg_color black
set -U tide_vi_mode_visual_bg_color black
set -U tide_vi_mode_default_icon '\e[1 q'
set -U tide_vi_mode_insert_icon '\e[5 q'
set -U tide_vi_mode_replace_icon '\e[3 q'
set -U tide_vi_mode_visual_icon '\e[1 q'
### right side
set -U tide_right_prompt_item_separator_same_color ' '
set -U tide_right_prompt_item_separator_diff_color ' '
set -U tide_right_prompt_items status cmd_duration
set -U tide_cmd_duration_threshold 5000
set -U tide_cmd_duration_decimals 0
set -U tide_cmd_duration_color brblack

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
set -U fish_color_valid_path --underline
## pager colours
set -U fish_pager_color_completion normal
set -U fish_pager_color_description bryellow
set -U fish_pager_color_prefix cyan\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -U fish_pager_color_progress --reverse
set -U fish_pager_color_selected_background --background=brcyan
set -U fish_pager_color_selected_prefix black
set -U fish_pager_color_selected_completion black

# use signal to reload config
trap "exec fish" USR1

# aliases
alias -s l "ls --color=auto --group-directories-first" 
alias -s ls "ls --color=auto --group-directories-first" 
alias -s la "ls -NAlh --color=auto --group-directories-first" 
alias -s ll "ls -Nlh --color=auto --group-directories-first" 
alias -s cp "cp -ai --reflink=auto --strip-trailing-slashes" 
alias -s mv "mv -i --strip-trailing-slashes" 
alias -s rm "rm -I --one-file-system" 
alias -s rmr "rm -R -I --one-file-system" 
alias -s rmrf "rm -Rf --one-file-system" 
alias -s grep "egrep --color=auto" 
alias -s egrep "egrep --color=auto" 

# abbreviations
abbr -a :q "exit" 
abbr -a v "$EDITOR" 
abbr -a ln "ln -fis" 
abbr -a free "free -h" 
abbr -a du "du -h" 
abbr -a df "df -h" 
abbr -a mkdir "mkdir -p" 
abbr -a rsync "rsync -aHSv --info=progress2" 
abbr -a userctl "systemctl --user" 
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
abbr -a rld "rm $XDG_CACHE_HOME/fish/fish_variables ; pkill -USR1 fish"
abbr -a zconf "$EDITOR "$ZDOTDIR"/.zshrc "$ZDOTDIR"/*.zsh" 
abbr -a fishconf "$EDITOR $XDG_CONFIG_HOME/fish/**"
abbr -a nvimrc "$EDITOR ~/.config/nvim/init.vim" 
abbr -a vimrc "$EDITOR ~/.config/nvim/init.vim" 
abbr -a dd 'dd status progress bs 4M' 
abbr -a cdu "$SUDO compsize -x" 
abbr -a cstatus "s git -C $GITCONFIGS status" 
abbr -a cdiff "s git -C $GITCONFIGS diff" 
abbr -a cpull "s git -C $GITCONFIGS pull origin master; s chown -R (whoami):(whoami) $GITCONFIGS/**/HOME,*" 
abbr -a cpush "s git -C $GITCONFIGS add -A .; s git -C $GITCONFIGS commit -a -m (date +%F_%T); s git -C $GITCONFIGS push origin master" 
abbr -a creset "s git -C $GITCONFIGS reset --hard; s chown -R {$USER}:{$USER} $GITCONFIGS/**/HOME,*" 
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
abbr -a pacs 'yay -S' 
abbr -a pacss 'yay -Ss' 
abbr -a syu 'yay -Syu' 
abbr -a Syu 'yay -Syu' 
abbr -a pacd "yay -Rns" 
abbr -a depclean 'yay -Rns (yay -Qqdt)' 
abbr -a reswap "for swap in (swapon --noheadings | awk '{print $1}'); do s swapoff $swap; s swapon $swap; done" 
abbr -a cpuvuln "grep . /sys/devices/system/cpu/vulnerabilities/*" 
abbr -a splitflac "shnsplit -f *.cue -o flac flac -0 -o %f - -t %n %t"

# get rid off greeting message
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

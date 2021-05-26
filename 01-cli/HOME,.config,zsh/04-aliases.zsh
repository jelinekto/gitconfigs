# regular
alias :q="exit" \
      s="$SUDO " \
      sudo="sudo " \
      doas="doas " \
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
# global
alias -g G="| grep" \
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
# suffix
alias -s {part,PART,mp4,MP4,avi,AVI,mov,MOV,webm,WEBM,mkv,MKV,mpg,MPG,ogv,OGV}="fork $MEDIAPLAYER" \
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

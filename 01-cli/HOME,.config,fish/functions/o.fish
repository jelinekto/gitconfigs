# Defined in /tmp/fish.LP1qVf/o.fish @ line 2
function o
  switch "$argv[1]"
    case \*.part \*.PART \*.mp4 \*.MP4 \*.avi \*.AVI \*.mov \*.MOV \*.webm \*.WEBM \*.mkv \*.MKV \*.mpg \*.MPG \*.ogv \*.OGV
      i3-swallow "$MEDIAPLAYER" "$argv"
    case \*.wav \*.WAV \*.flac \*.FLAC \*.wv \*.WV \*.opus \*.OPUS \*.ogg \*.OGG \*.mp3 \*.MP3 \*.m4a \*.M4A \*.ape \*.APE
      "$MEDIAPLAYER" "$argv"
    case \*.pdf \*.PDF
      i3-swallow "$PDFREADER" "$argv"
    case \*.txt \*.TXT \*.tex \*.TEX \*.rmd \*.RMD \*.md \*.MD \*.srt \*.SRT \*.ini \*.INI \*.json \*.JSON \*.yaml \*.YAML \*.yml \*.YML \*.js \*.JS \*.zsh \*.ZSH \*.fish \*.FISH \*.patch \*.PATCH \*.conf \*.CONF
      "$EDITOR" "$argv"
    case \*.doc \*.DOC \*.docx \*.DOCX \*.xls \*.XLS \*.xlsx \*.XLSX \*.ppt \*.PPT \*.pptx \*.PPTX
      i3-swallow libreoffice "$argv"
    case \*.jpg \*.JPG \*.jpeg \*.JPEG \*.gif \*.GIF \*.png \*.PNG \*.tiff \*.TIFF \*.webp \*.WEBP \*.bmp \*.BMP \*.svg \*.SVG
      i3-swallow "$IMAGEVIEWER" "$argv"
    case \*.zst \*.ZST
      zstd -vd --long=31 --ultra "$argv"
    case \*.lz4 \*.LZ4
      lz4 -d "$argv"
    case \*.tar \*.TAR \*.gzip \*.GZIP \*.xz \*.XZ \*.bz2 \*.BZ2 \*.lzo \*.LZO \*.lzma \*.LZMA \*.cpio \*.CPIO \*.rpm \*.RPM \*.rar \*.RAR \*.deb \*.DEB \*.zip \*.ZIP \*.7z \*.7Z
      unp "$argv"
    case \*.html \*.HTML \*.htm \*.HTM \*.php \*.PHP
      i3-swallow "$BROWSER" "$argv"
    case \*.torrent \*.TORRENT
      i3-swallow "$TORRENTCLIENT" "$argv"
    case \*
      printf 'Unhandled file type\n'
  end
end

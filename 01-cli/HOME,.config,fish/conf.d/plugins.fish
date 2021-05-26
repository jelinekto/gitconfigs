# fzf
bind \co __fzf_search_current_dir
bind \cr __fzf_search_history
bind --mode insert \co __fzf_search_current_dir
bind --mode insert \cr __fzf_search_history

# pisces
for pair in $pisces_pairs
    _pisces_bind_pair insert (string split -- ',' $pair)
end
bind -M insert \b _pisces_backspace
bind -M insert \177 _pisces_backspace
bind -M insert \t _pisces_complete

# z
test ! -e "$Z_DATA_DIR"; and mkdir -p "$Z_DATA_DIR"
test ! -e "$Z_DATA"; and touch "$Z_DATA"

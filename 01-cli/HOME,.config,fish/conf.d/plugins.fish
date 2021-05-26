status is-interactive
or exit 0

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
function __z_on_variable_pwd --on-variable PWD
    __z_add
end
if test ! -e "$Z_DATA"
  mkdir -p "$Z_DATA"
  and rmdir "$Z_DATA"
  touch "$Z_DATA"
end

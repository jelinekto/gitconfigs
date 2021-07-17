function clear
  if [ "$INSIDE_EMACS" = 'vterm' ]
    vterm_printf "51;Evterm-clear-scrollback";
    tput clear
  else
    builtin clear
  end
end

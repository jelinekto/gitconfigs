function fish_right_prompt
  set_color brblack
  if test $CMD_DURATION -gt 5000
    printf '%02dh %02dm %02ds\n' (math $CMD_DURATION/1000/3600) (math $CMD_DURATION%3600/1000/60) (math $CMD_DURATION/1000%60) 2>/dev/null | sed 's/00h 00m//;s/00h //'
  end

  set_color normal
end

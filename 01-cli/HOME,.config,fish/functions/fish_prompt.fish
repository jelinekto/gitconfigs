function fish_prompt
    set -l laststatus $status

    # current directory
    printf '%s' (prompt_pwd)
    set_color normal

    # git
    printf '%s ' (fish_git_prompt)

    # jobs
    set -l jobs (jobs | grep -v autojump | wc -l)
    if test $jobs -gt 0
      set_color brcyan
      printf '[%s] ' $jobs
    end

    # symbol
    set -l symbol
    set -l symbol_color
    if test "$USER" = 'root'
      set symbol '#'
    else
      set symbol '$'
    end
    if test "$laststatus" -eq 0
      set symbol_color --bold brgreen
    else
      set symbol_color --bold brred
    end
    set_color $symbol_color
    printf '%s ' "$symbol"

    set_color normal
end

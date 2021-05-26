# Defined in /tmp/fish.YkwuJW/__fish_prepend_sudo.fish @ line 2
function __fish_prepend_sudo --description Prepend\ \'sudo\ \'\ to\ the\ beginning\ of\ the\ current\ commandline
    set -l cmd (commandline -po)
    set -l cursor (commandline -C)
    if test -z "$cmd"
        commandline -r "s $history[1]"
    else if test "$cmd[1]" != s
        commandline -C 0
        commandline -i "s "
        commandline -C (math $cursor + 5)
    else
        commandline -r (string sub --start=6 (commandline -p))
        commandline -C -- (math $cursor - 5)
    end
end

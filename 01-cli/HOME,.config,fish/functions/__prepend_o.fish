# Defined in /tmp/fish.LWVXOW/__prepend_o.fish @ line 2
function __prepend_o --description Prepend\ \'o\ \'\ to\ the\ beginning\ of\ the\ current\ commandline
    set -l cmd (commandline -po)
    set -l cursor (commandline -C)
    if test "$cmd[1]" != o
        commandline -C 0
        commandline -i "o "
        commandline -C (math $cursor + 2)
    else
        commandline -r (string sub --start=6 (commandline -p))
        commandline -C -- (math $cursor - 2)
    end
end

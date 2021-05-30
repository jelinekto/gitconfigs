# Defined in /tmp/fish.cizAaK/s.fish @ line 2
function s --wraps=doas --description 'alias doas'
  if test -n "$SUDO"
    $SUDO $argv
  else
    $argv
  end
end

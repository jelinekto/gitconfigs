# Defined via `source`
function s --description 'alias sudo/doas'
  if test -n "$SUDO"
    $SUDO $argv
  else
    $argv
  end
end

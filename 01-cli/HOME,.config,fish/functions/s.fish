# Defined via `source`
function s --wraps='doas ' --description 'alias sudo/doas'
  $SUDO $argv; 
end

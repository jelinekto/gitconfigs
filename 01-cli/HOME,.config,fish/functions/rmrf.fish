# Defined via `source`
function rmrf --wraps='rm -Rf -I --one-file-system' --description 'alias rmrf rm -Rf -I --one-file-system'
  rm -Rf -I --one-file-system $argv; 
end

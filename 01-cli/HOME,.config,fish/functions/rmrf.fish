# Defined via `source`
function rmrf --wraps='rm -Rf --one-file-system' --description 'alias rmrf rm -Rf --one-file-system'
  rm -Rf --one-file-system $argv; 
end

# Defined via `source`
function rmr --wraps='rm -R -I --one-file-system' --description 'alias rmr rm -R -I --one-file-system'
  rm -R -I --one-file-system $argv; 
end

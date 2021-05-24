# Defined via `source`
function s --wraps='doas ' --description 'alias s=doas '
  doas  $argv; 
end

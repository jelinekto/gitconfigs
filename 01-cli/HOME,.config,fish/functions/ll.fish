# Defined via `source`
function ll --wraps='ls -Nlh --color auto --group-directories-first' --description 'alias ll ls -Nlh --color auto --group-directories-first'
  ls -Nlh --color auto --group-directories-first $argv; 
end

# Defined via `source`
function la --wraps='ls -NAlh --color=auto --group-directories-first' --description 'alias la ls -NAlh --color=auto --group-directories-first'
  ls -NAlh --color=auto --group-directories-first $argv; 
end

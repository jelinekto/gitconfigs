# Defined via `source`
function l --wraps='ls --color auto --group-directories-first' --description 'alias l ls --color auto --group-directories-first'
  ls --color auto --group-directories-first $argv; 
end

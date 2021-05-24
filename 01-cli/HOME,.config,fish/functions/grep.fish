# Defined via `source`
function grep --wraps='egrep --color auto' --description 'alias grep egrep --color auto'
  egrep --color auto $argv; 
end

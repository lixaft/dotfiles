function __editor_paginate -d "Paginate with the current editor"
    fish_commandline_append " &| $EDITOR -"
end

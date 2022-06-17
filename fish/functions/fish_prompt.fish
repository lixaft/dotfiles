function fish_prompt --description 'Write out the prompt'
    set prompt "$(set_color red)$prompt$USER"
    set prompt "$prompt$(set_color normal)@"
    set prompt "$prompt$(set_color purple)$hostname"
    set prompt "$prompt$(set_color normal) -> "
    set prompt "$prompt$(set_color brblue)$PWD"
    set prompt "$prompt$(set_color blue)$(fish_vcs_prompt)"
    set prompt "$prompt\n$(set_color normal)> "
    echo -e "$prompt"
end

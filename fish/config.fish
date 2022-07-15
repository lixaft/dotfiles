# Commands to run in interactive sessions can go here
if status is-interactive

    # Remove the fish welcome message.
    set fish_greeting

    # Load starship.
    starship init fish | source

end

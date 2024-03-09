function venv --description "Create a virtualenv and activate it"
    set -l name "venv"
    set -l python ""

    for arg in $argv
        switch "$arg"
        case "-h" "--help"
            echo "Virtualenv command"
            echo "Usage: venv [OPTIONS]... [NAME]"
            echo
            echo "Options:"
            echo "  -p --python   selet the python version"
            return
        case "-p" "--python"
            # FIX: I should try to get the index of the arg in the array.
            set python $argv[2]
        case '*'
            set name $arg
        end
    end

    if not test -e $name
        virtualenv --python $python $name
    end
    source "$name/bin/activate.fish"

    return
end

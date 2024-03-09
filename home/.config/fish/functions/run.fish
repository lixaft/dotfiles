function run --description "Run a script" --argument script
    if test -z $script
        printf "No script file specified\n"
        return 1
    end

    chmod +x $script
    ./$script
end

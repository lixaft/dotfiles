function bak --description "Backup a file or directory"
    for each in $argv
        cp -r $each $each.bak
    end
end

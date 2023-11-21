function dotenv --description "Load environment variables from .env file"
    if test -r ".env"
        for line in (cat ".env")
            set seq (string split -m 1 "=" "$line")
            set name (string trim $seq[1])
            set value (string trim $seq[2])

            set -gx "$name" "$value"
        end
    end
    return 0
end

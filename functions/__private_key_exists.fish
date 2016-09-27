function __private_key_exists
    if not set -q argv[1]
        return 1
    end
    set private_key $argv[1]

    test -e $private_key
end

function __private_key_exists
    set private_key $argv[1]

    test -e $private_key
end

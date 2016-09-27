function __get_private_key
    if not set -q argv[1]
        return 1
    end
    set key $argv[1]

    set private (string replace '.pub' '' $key)
    echo $private
end

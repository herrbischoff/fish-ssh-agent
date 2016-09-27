function __list_public_keys
    if not set -q argv[1]
        return 1
    end
    set ssh_dir $argv[1]

    for key in $ssh_dir/*.pub
        echo $key
    end
end

function __list_public_keys
    set ssh_dir $argv[1]

    for key in $ssh_dir/*.pub
        echo $key
    end
end

function __add_keys
    if [ (count $argv) -eq 0 ]
        return 1
    end
    set keys $argv

    for key in $keys
        set private (__get_private_key $key)

        if __private_key_exists $private
            ssh-add $private >/tmp/ssh-add.log ^ /tmp/ssh-add.err
        end
    end
end


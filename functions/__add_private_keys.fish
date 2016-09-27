function _add_private_keys
    set keys $argv

    for key in $keys
        set private (__get_private $key)

        if __private_key_exists $private
            ssh-add $private
        end
    end
end

_add_private_keys (__list_public_keys $HOME/.ssh/)
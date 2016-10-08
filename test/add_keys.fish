source $DIRNAME/../functions/__add_keys.fish
source $DIRNAME/../functions/__get_private_key.fish
source $DIRNAME/../functions/__private_key_exists.fish

set path $DIRNAME/$TESTNAME

function setup
    mkdir -p $path
end

function teardown
    rm -rf $path
end

test "$TEST - Fail if `keys` list is empty"
    (
        __add_keys
        echo $status
    ) = 1
end

test "$TEST - Add a given key"
  (
      eval (ssh-agent -c) > /dev/null
      set old_keys_list (ssh-add -l | grep --count RSA)
      ssh-keygen -f $path/.test -N '' >/dev/null

      __add_keys $path/.test.pub

      set new_keys_list (ssh-add -l | grep --count RSA)
      math "$new_keys_list - $old_keys_list"
    ) = 1
end

source $DIRNAME/../functions/__get_private_key.fish
set path $DIRNAME/$TESTNAME

function setup
    mkdir -p $path
end

function teardown
    rm -rf $path
end

test "$TEST - Fail if `key` argument is missing"
    (
        __get_private_key
        echo $status
    ) = 1
end

test "$TEST - Fail if `key` argument is missing"
    (
        touch $path/test.pub
        __get_private_key $path/test.pub
    ) = "$path/test"
end


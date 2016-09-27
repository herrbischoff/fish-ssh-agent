source $DIRNAME/../functions/__private_key_exists.fish
set path $DIRNAME/$TESTNAME

function setup
    mkdir -p $path
end

function teardown
    rm -rf $path
end

test "$TEST - Fail if `key` argument is missing"
    (
        __private_key_exists
        echo $status
    ) = 1
end

test "$TEST - Fail if private key is missing"
    (
        __private_key_exists $path/test.private
        echo $status
    ) = 1
end

test "$TEST - Succeed if private key exisits"
    (
    	touch $path/test.private
        __private_key_exists $path/test.private
        echo $status
    ) = 0
end


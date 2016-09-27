source $DIRNAME/../functions/__list_public_keys.fish
set path $DIRNAME/$TESTNAME/

function setup
    mkdir -p $path
end

function teardown
	rm $path -rf
end

test "$TEST - Fail if SSH directory argument is missing"
    (
        __list_public_keys
        echo $status
    ) = 1
end

test "$TEST - Silent if no public key in directory"
    (
        echo ( __list_public_keys $path | wc -l )
    ) = 0
end

test "$TEST - List only *.pub files"
    (
        touch $path/key
        touch $path/key1.pub $path/key2.pub
        echo ( __list_public_keys $path | wc -l )
    ) = 2
end

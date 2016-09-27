function __get_private
    set key $argv[1]

    set private (string replace '.pub' '' $key)
    echo $private
end

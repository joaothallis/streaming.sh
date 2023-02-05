function start_streaming

    builtin history clear

    abbr --add nvim "nvim -i NONE"
    abbr --add env "echo 'env command is disabled'"
    abbr --add export "echo 'export command is disabled'"

    google-chrome-stable &

    if not pgrep -x "obs" > /dev/null
        obs --startstreaming
    end
end

function stop_streaming

    abbr -e nvim
    abbr -e env
    abbr -e export

    obs --stopstreaming
end
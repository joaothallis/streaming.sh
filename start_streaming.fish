#!/usr/bin/env fish
rm ~/.local/share/fish/fish_history

abbr --add nvim "nvim -i NONE"
abbr --add env "echo 'env command is disabled'"
abbr --add export "echo 'export command is disabled'"
abbr --add x "echo 'export command is disabled'"

google-chrome-stable &

if not pgrep -x "obs" > /dev/null
    obs --startstreaming
end
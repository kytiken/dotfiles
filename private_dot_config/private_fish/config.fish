if status is-interactive
    # Commands to run in interactive sessions can go here
end
# abbreviations
abbr zj zellij

# setting path
fish_add_path --path $HOME/.antigravity/antigravity/bin

# set environment variables
set -x EDITOR /opt/homebrew/bin/hx

# setup tools
~/.local/bin/mise activate fish | source
starship init fish | source

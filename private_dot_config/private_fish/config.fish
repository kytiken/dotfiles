if status is-interactive
    # Commands to run in interactive sessions can go here
end

~/.local/bin/mise activate fish | source
set -x EDITOR hx
starship init fish | source

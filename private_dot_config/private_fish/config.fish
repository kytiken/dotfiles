if status is-interactive
    # Commands to run in interactive sessions can go here
end
# abbreviations
abbr zj zellij
abbr cz chezmoi

# setting path
fish_add_path --path $HOME/.antigravity/antigravity/bin

# set environment variables
set -x EDITOR /opt/homebrew/bin/hx

# setup tools
eval "$(/opt/homebrew/bin/brew shellenv)"
~/.local/bin/mise activate fish | source
starship init fish | source
zoxide init fish | source

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "~/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

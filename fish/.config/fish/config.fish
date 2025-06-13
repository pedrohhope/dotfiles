if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Initialize starship prompt
starship init fish | source


# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Bitwarden
set -gx SSH_AUTH_SOCK $HOME/.bitwarden-ssh-agent.sock

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
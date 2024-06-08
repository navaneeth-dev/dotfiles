set PATH $PATH ~/.local/bin
set PATH $PATH /opt/android-studio/bin

if status is-interactive
    keychain --eval id_rsa ~/.ssh/new_primary_ed25519 | source
end

bind \c_ 'tmux-sessionizer'

zoxide init fish | source
fzf --fish | source

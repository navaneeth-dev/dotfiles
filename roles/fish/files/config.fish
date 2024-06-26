set PATH $PATH ~/.local/bin
set PATH $PATH ~/go/bin
set PATH $PATH /opt/android-studio/bin

set GPG_TTY $(tty)
set SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

if status is-interactive
end

bind \c_ 'tmux-sessionizer'

zoxide init fish | source
fzf --fish | source
source "$HOME/.cargo/env.fish"

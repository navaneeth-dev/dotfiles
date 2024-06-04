set PATH $PATH ~/.local/bin

if status is-interactive
    set -e SSH_AGENT_PID
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
end

bind \c_ 'tmux-sessionizer'

zoxide init fish | source
fzf --fish | source

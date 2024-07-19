set PATH $PATH ~/.local/bin
set PATH $PATH ~/go/bin
set PATH $PATH /opt/android-studio/bin

set -x GPG_TTY $(tty)
set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gcr/ssh"
set -gx PATH $PATH $HOME/.krew/bin

export KUBECONFIG=$HOME/.kube/proxyconfig:$HOME/.kube/ociconfig:$HOME/.kube/config
#export OCI_CLI_AUTH=security_token

if status is-interactive
end

bind \c_ 'tmux-sessionizer'

zoxide init fish | source
fzf --fish | source
source "$HOME/.cargo/env.fish"

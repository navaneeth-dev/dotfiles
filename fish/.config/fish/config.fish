set -x SHELL /usr/bin/fish
fish_add_path $HOME/.local/bin

starship init fish | source
zoxide init fish | source

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"
alias bat="batcat"

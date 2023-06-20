#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y fish
sudo chsh "$(id -un)" --shell "/usr/bin/fish"

sudo apt-get install -y bat
sudo apt-get install -y unzip
sudo apt-get install -y wget
sudo apt-get install -y ripgrep

sudo apt-get install -y stow

# exa
if [ ! -f /usr/local/bin/exa ]
then
  wget "https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip"
  rm -rf bin completions man
  unzip exa-linux-x86_64-musl-v0.10.1.zip
  # sudo mv man/* /usr/local/share/man/man1/
  rm -rf man
  sudo mv bin/exa /usr/local/bin/exa
  rm -rf bin
  mv completions/exa.fish ~/.config/fish/completions/exa.fish
  rm -rf completions
  rm exa-linux-x86_64-musl-v0.10.1.zip
fi

wget https://starship.rs/install.sh -O starship.sh
chmod +x ./starship.sh
./starship.sh -f
rm ./starship.sh

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Tmux
if [ ! -f /usr/local/bin/tmux ]
then
  wget https://github.com/tmux/tmux/releases/latest/download/tmux-3.3a.tar.gz
  # runtime dep
  sudo apt-get install libevent ncurses
  # build dep
  sudo apt-get install libevent-dev ncurses-dev build-essential bison pkg-config
  tar -zxf tmux-*.tar.gz
  cd tmux-*/ && ./configure && make && sudo make install
  rm tmux-*.tar.gz
  rm -rf tmux-*
fi

if [ ! -f /usr/bin/nvim ]
then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
  rm nvim.appimage
fi

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

stow */ --target ~ --adopt

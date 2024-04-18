#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y fish
sudo chsh "$(id -un)" --shell "/usr/bin/fish"

sudo apt-get install -y bat
sudo apt-get install -y unzip
sudo apt-get install -y wget
sudo apt-get install -y ripgrep
sudo apt-get install -y shellcheck

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
sudo sh ./starship.sh -f
rm ./starship.sh

git config --global user.email "32010211+navaneeth-dev@users.noreply.github.com"
git config --global user.name "Navaneeth Rao"

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# Tmux
echo "=== INSTALLING TMUX ==="
if [ ! -f /usr/local/bin/tmux ]
then
  wget https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz
  # runtime dep
  sudo apt-get install -y libevent ncurses
  # build dep
  sudo apt-get install -y libevent-dev ncurses-dev build-essential bison pkg-config
  tar -zxf tmux-*.tar.gz
  cd tmux-*/ && ./configure && make && sudo make install
  cd ..
  rm tmux-*.tar.gz
  rm -rf tmux-*
fi

echo "=== INSTALLING NEOVIM ==="
if [ ! -f /usr/bin/nvim ]
then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux64.tar.gz
fi

git clone https://github.com/NvChad/starter ~/.config/nvim

stow -v */ --target ~ --adopt

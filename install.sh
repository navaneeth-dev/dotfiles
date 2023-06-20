#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y fish
sudo chsh "$(id -un)" --shell "/usr/bin/fish"

sudo apt-get install -y tmux

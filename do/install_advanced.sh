#!/bin/bash
############ Install Core Tools ############
sudo apt install git
sudo apt install jq
sudo apt install curl
sudo apt install dconf

############ Install Rust ############
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

############ Install Alacritty ############
cargo install alacritty
cd ~/.config/alacritty
git clone https://github.com/alacritty/alacritty-theme
# Love Josean's coolnight theme
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/.config/alacritty/themes/themes/coolnight.toml --output ~/.config/alacritty/themes/themes/coolnight.toml
# My own alacritty.toml
curl https://raw.githubusercontent.com/simplyalexander/config/have/alacritty_linux.toml --output ~/.config/alacritty/alacritty.toml
cd ~

############ Install R ############
sudo curl -L https://rig.r-pkg.org/deb/rig.gpg -o /etc/apt/trusted.gpg.d/rig.gpg
sudo sh -c 'echo "deb http://rig.r-pkg.org/deb rig main" > /etc/apt/sources.list.d/rig.list'
sudo apt update
sudo apt install r-rig

############ Set up shell config ############
curl https://raw.githubusercontent.com/simplyalexander/config/have/.bashrc_advanced --output ~/.bashrc

############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############

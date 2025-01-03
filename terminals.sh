#!/bin/bash

############ Install Fonts ############

# FiraCode
sudo apt install fonts-firacode
# JetBrains Mono
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# Nerd fonts
mkdir -p  ~/.local/share/fonts

git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts

git sparse-checkout add "patched-fonts/FiraCode"
git sparse-checkout add "patched-fonts/JetBrainsMono"

bash ./install.sh FiraCode
bash ./install.sh JetBrainsMono

cd ..
rm -rf nerd-fonts

############ Install Alacritty ############
# Requires rust
git clone https://github.com/alacritty/alacritty.git
cd alacritty

apt install cmake g++ pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

cargo build --release

# Desktop app
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# Manual page
sudo apt install gzip 
sudo apt install scdoc

sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5
scdoc < extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null

# Autocompletions
mkdir -p ~/.bash_completion
cp extra/completions/alacritty.bash ~/.bash_completion/alacritty

# Remove source directory
cd ..
rm -rf alacritty

# don't forget to add  "source ~/.bash_completion/alacritty" to  .bashrc

# Install themes
mkdir ~/.config/alacritty 
cd ~/.config/alacritty
git clone https://github.com/alacritty/alacritty-theme themes
# Love Josean's coolnight theme
curl https://raw.githubusercontent.com/josean-dev/dev-environment-files/main/.config/alacritty/themes/themes/coolnight.toml --output ~/.config/alacritty/themes/themes/coolnight.toml
# My own alacritty.toml
curl https://raw.githubusercontent.com/simplyalexander/config/refs/heads/master/have/alacritty_linux.toml --output ~/.config/alacritty/alacritty.toml
cd ~

# Install Oh My Posh Prompt (to ~/.local/bin/)
curl -s https://ohmyposh.dev/install.sh | bash -s

mkdir ~/.config/ohmyposh
cd ~/.config/ohmyposh

# Export default config
oh-my-posh config export --format toml --output default.toml
# Import p10k-style config






#!/bin/bash
############ Install Core Tools ############
sudo apt install git
sudo apt install jq
sudo apt install curl
sudo apt install dconf

############ Install Languages ############

# Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# R
sudo curl -L https://rig.r-pkg.org/deb/rig.gpg -o /etc/apt/trusted.gpg.d/rig.gpg
sudo sh -c 'echo "deb http://rig.r-pkg.org/deb rig main" > /etc/apt/sources.list.d/rig.list'
sudo apt update
sudo apt install r-rig

############ Set up shell ############
curl https://raw.githubusercontent.com/simplyalexander/config/have/.bashrc_advanced --output ~/.bashrc

############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############
############ NOW INSTALL PACKAGES HERE >>> ############

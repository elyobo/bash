# Installation

```
# Go home
cd ~
# Backup old .bashrc
mv .bashrc .bashrc-old
# Install new config
git clone https://github.com/elyobo/bash.git .bash 
ln -s ~/.bash/bashrc .bashrc
cd .bash
git submodule update --init

# Done!

